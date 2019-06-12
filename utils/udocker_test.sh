#!/bin/bash

# ##################################################################
#
# udocker high level testing
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ##################################################################

# Codes
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
PURPLE='\033[1;36m'
NC='\033[0m'
ASSERT_STR="${BLUE}Assert:${NC}"
RUNNING_STR="${BLUE}Running:${NC}"
OK_STR="${GREEN}OK${NC}"
FAIL_STR="${RED}FAIL${NC}"
THIS_SCRIPT_NAME=$( basename "$0" )

function print_ok
{
  printf "  ${OK_STR}"
}

function print_fail
{
  printf "${FAIL_STR}"
}

echo "================================================="
echo "* This script tests all udocker CLI and options *"
echo "================================================="

echo "udocker with no options, or udocker help,-h,--help: show help message"
udocker; return=$? >/dev/null 2>&1
if [ $return == 0 ]; then
    print_ok;   echo "    udocker"
else
    print_fail; echo "    udocker"
fi
