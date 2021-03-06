#!/usr/bin/env python

#   Copyright 2015-2016 Scott Bezek and the splitflap contributors
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

import logging
import os
import subprocess
import sys
import time
import re

from contextlib import contextmanager

PCB_FILENAME = os.path.abspath(sys.argv[1])
PDF_FILENAME, ignore = os.path.splitext(os.path.basename(PCB_FILENAME))
PDF_FILENAME = PDF_FILENAME + ".pdf"
PCB_DIRNAME = os.path.dirname(PCB_FILENAME)

os.chdir(PCB_DIRNAME)

electronics_root = PCB_DIRNAME
repo_root = PCB_DIRNAME

from util import file_util
from export_util import (
    PopenContext,
    versioned_schematic,
    xdotool,
    wait_for_window,
    recorded_xvfb,
)

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

def eeschema_plot_schematic(output_directory):
    wait_for_window('eeschema', '\[')

    logger.info('Focus main eeschema window')
    xdotool(['search', '--name', '\[', 'windowfocus'])

    logger.info('Open File->Plot->Plot')
    xdotool(['key', 'alt+f'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Down'])
    xdotool(['key', 'Return'])

    wait_for_window('plot', 'Plot Schematic Options')
    xdotool(['search', '--name', 'Plot', 'windowfocus'])

    logger.info('Enter build output directory')
    xdotool(['type', output_directory])

    logger.info('Select PDF plot format')
    xdotool([
        'key',
        'Tab',
        'Tab',
        'Up',
        'Up',
        'Up',
        'space',
    ])

    logger.info('Plot')
    xdotool(['key', 'Return'])

    logger.info('Wait before shutdown')
    time.sleep(2)

def export_schematic():
    schematic_file = os.path.join(electronics_root, PCB_FILENAME)
    output_dir = os.path.join(electronics_root, 'build')
    file_util.mkdir_p(output_dir)

    screencast_output_file = os.path.join(output_dir, 'export_schematic_screencast.ogv')
    schematic_output_pdf_file = os.path.join(output_dir, PDF_FILENAME)
    schematic_output_png_file = os.path.join(output_dir, 'schematic.png')

    with versioned_schematic(schematic_file):
        with recorded_xvfb(screencast_output_file, width=800, height=600, colordepth=24):
            with PopenContext(['eeschema', schematic_file], close_fds=True) as eeschema_proc:
                eeschema_plot_schematic(output_dir)
                eeschema_proc.terminate()

    logger.info('Rasterize')
    subprocess.check_call([
        'convert',
        '-density', '96',
        schematic_output_pdf_file,
       '-background', 'white',
       '-alpha', 'remove',
       schematic_output_png_file,
   ])

if __name__ == '__main__':
    export_schematic()
