#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:ts=4:sw=4:softtabstop=4:smarttab:expandtab

import csv
import re
import os
import sys


class storage(object):

    def __init__(self):
        self.name = {}
        self.supply = {}
        self.pdf = {}

    def add_item_(self, package, designation, name, supplier, pdf):
        def supply(supplier):

            s = []

            for i in supplier:
                suppliername = None
                m = re.search(r"^https://www.electronshik.ru", i)
                if m:
                    suppliername = "electronshik.ru"

                m = re.search(r"^https://chipster.ru", i)
                if m:
                    suppliername = "chipster.ru"

                m = re.search(r"^https://www.digikey.com", i)
                if m:
                    suppliername = "digikey.com"

                m = re.search(r"^https://mouser.com", i)
                if m:
                    suppliername = "mouser.com"

                m = re.search(r"^https://uk.farnell.com", i)
                if m:
                    suppliername = "farnell.com"

                s.append((suppliername, i))

            return s

        t = "%s%s" % (package, designation)
        self.name[t] = name
        if supplier is not None:
            self.supply[t] = supply(supplier)
        else:
            self.supply[t] = None
        self.pdf[t] = pdf

    def add_item(self, packages, designations, name, supplier, pdf):
        for i in packages:
            for j in designations:
                self.add_item_(i, j, name, supplier, pdf)

    def get_item(self, package, designation):
        t = "%s%s" % (package, designation)
        try:
            n = self.name[t]
            s = self.supply[t]
            p = self.pdf[t]
            return (n, s, p)
        except KeyError:
            return None


C_1206 = ("C_1206_3216Metric_Pad1.39x1.80mm_HandSolder",
          "C_1206_3216Metric_Pad1.42x1.75mm_HandSolder",
          "C_1206_3216Metric")

R_1206 = ("R_1206_3216Metric_Pad1.39x1.80mm_HandSolder",
          "R_1206_3216Metric_Pad1.42x1.75mm_HandSolder",
          "R_1206_3216Metric")


def electronshik_ru_url(brand, partnum):
    return "https://www.electronshik.ru/item/%s/%s" % (brand, partnum,)


def digikey_url(partnum):
    return "https://www.digikey.com/products/en?keywords=%s" % (partnum,)


def mouser_url(partnum):
    return "https://mouser.com/Search/Refine.aspx?Keyword=%s" % (partnum,)


def farnell_url(partnum):
    return "https://uk.farnell.com/search?st=%s" % (partnum,)


def united_suppliers_url(brand, partnum):
    sup_urls = []
    sup_urls.append(electronshik_ru_url(brand, partnum))
    sup_urls.append(digikey_url(partnum))
    sup_urls.append(mouser_url(partnum))
    sup_urls.append(farnell_url(partnum))
    return sup_urls


s = storage()


#
# Yageo SMD items
#
def add_yageo_item(size, rating, partnum, yageo_page):

    page = ""
    if yageo_page is not None:
        page = "#page=%d" % (yageo_page,)

    s.add_item(size, rating,
               "YAGEO %s" % (partnum,),
               united_suppliers_url("YAG", partnum),
               "http://www.yageo.com/exep/pages/download/literatures/ProductSelectionGuide_2018_Final.pdf%s" % (page,))


#
# Yageo SMD ceramic capacitors
#
# CCxxxxKyX7R0BBzzz
#
# K --- Capacitance tolerance 10%
#
# X7R --- capacitor will operate from −55°C (X) to +125°C (7)
#         with a capacitance change of at most ±15% (R).
#
# y = {K, P, R ...} see p. 99: packaging style
#   R = Paper / PE tape reel Ø7 inch
#   P = Paper / PE tape reel Ø13 inch
#   K = Embossed plastic tape reel Ø7 inch
#   F = Embossed plastic tape reel Ø13 inch
#   C = Bulk case
#
# 0 --- rated voltage
#   4 = 4 V
#   5 = 6.3 V
#   6 = 10 V
#   7 = 16 V
#   8 = 25 V
#   G = 35 V
#   9 = 50 V
#   0 = 100 V
#   A = 200 V
#   Y = 250 V
#   B = 500 V
#
def add_yageo_cc1206(rating, partnum):
    add_yageo_item(C_1206, rating, partnum, yageo_page=112)


add_yageo_cc1206(("10nF",), "CC1206KRX7R9BB103")
add_yageo_cc1206(("0.1uF", "100nF"), "CC1206KRX7R9BB104")
add_yageo_cc1206(("1uF",), "CC1206KKX7R9BB105")
add_yageo_cc1206(("10uF",), "CC1206KKX7R8BB106")


#
# Yageo SMD resistors
#
# RCxxxxFR-07xxxxL --- 1%
# RCxxxxJR-07xxxxL --- 5%
#
def add_yageo_rc1206fr(rating, partnum):
    add_yageo_item(R_1206, rating, partnum, yageo_page=8)


add_yageo_rc1206fr(("1.1K",), "RC1206FR-071K1L")
add_yageo_rc1206fr(("4.7K",), "RC1206FR-074K7L")
add_yageo_rc1206fr(("10K",), "RC1206FR-0710KL")


s.add_item(("LED_1206_3216Metric",), ("LED",),
           "Noname LED 1206",
           ("https://chipster.ru/catalog/components/optic/leds/smd-led/3029.html",),
           None)

#
# Connectors
#
s.add_item(("IDC-Header_2x05_P2.54mm_Vertical",), ("Conn_02x05_Odd_Even",),
           "CONNFLY BH-10",
           (electronshik_ru_url("CONNFLY", "BH-10"),),
           "https://static.chipdip.ru/lib/463/DOC002463525.pdf")

s.add_item(("IDC-Header_2x20_P2.54mm_Vertical",), ("Conn_02x20_Odd_Even",),
           "CONNFLY BH-40",
           (electronshik_ru_url("CONNFLY", "BH-40"),),
           "https://static.chipdip.ru/lib/463/DOC002463525.pdf")

#
# Integrated Circuits (ICs)
#
s.add_item(("SOIC-14_3.9x8.7mm_P1.27mm",), ("4066",),
           "ONS MC14066BDR2G",
           united_suppliers_url("ONS", "MC14066BDR2G"),
           "https://www.onsemi.com/pub/Collateral/MC14066B-D.PDF")

s.add_item(("SOT-23-5",), ("TPS79333-EP",),
           "TI TPS79333-EP",
           united_suppliers_url("TI", "TPS79333DBVR"),
           "http://www.ti.com/lit/ds/symlink/tps793.pdf")


#
# Ignored items
#
def ignore_item(packages, designations):
    s.add_item(packages, designations,
               "(none)",
               ("(none)",),
               None)


ignore_item(("MountingHole_3.2mm_M3",), ("Mounting_Hole",))
ignore_item(("KiCad-Logo2_6mm_SilkScreen",), ("KiCad-Logo2_6mm_SilkScreen",))


def read_item(reader):

    for row in reader:
        # print("%s\t%s\t%s" % (row['Package'], row['Designation'], row['Quantity']))
        if row['Package'] == 'Package' and row['Designation'] == 'Designation':
            continue

        t = s.get_item(row['Package'], row['Designation'])
        if t is None:
            # print("no item: %s %s |  |  |  " % (row['Package'], row['Designation']))
            yield "no item: %s %s |  |  |  " % (row['Package'], row['Designation'])
            # sys.exit(1)
            continue

        name, supply, pdf = t

        if pdf is not None:
            pdf = "[pdf](%s)" % (pdf,)
        else:
            pdf = "no pdf"

        supplier = ""
        if supply is not None:
            for suppliername, url in supply:
                if suppliername is None:
                    suppliername = "supplier"
                supplier = supplier + " [%s](%s)<br />" % (suppliername, url,)

        if name != "(none)":
            yield "| %s | %s | %s | %s | %s | %s |" % (name, row['Designation'], row['Designator'], row['Quantity'], supplier, pdf)


reader = csv.DictReader(open(sys.argv[1], 'rb'),
                        fieldnames=[
                                      'Id',
                                      'Designator',
                                      'Package',
                                      'Quantity',
                                      'Designation',
                                      'Supplier and ref'
                                      ],
                        delimiter=';',
                        quotechar='"',
                        skipinitialspace=True)

basename = os.path.basename(sys.argv[1])
print("## %s ##" % (basename,))
print("")
print("| name | designation | designator | quantity | supply | datasheets |")
print("| ---  | ---         | ---        | ---      | ---    | ---        |")

for i in sorted(read_item(reader)):
    print(i)
