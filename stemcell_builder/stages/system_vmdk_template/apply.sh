#!/usr/bin/env bash
#
# Copyright (c) 2009-2012 VMware, Inc.

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash
source $base_dir/lib/prelude_bosh.bash

module_dir=$(ls -d $chroot/lib/modules/3.*-virtual | tail -1)
vmdk_template_dir="$module_dir/vmdk_template"

mkdir -p $vmdk_template_dir
cp $assets_dir/env.vmdk $vmdk_template_dir
cp $assets_dir/env-flat.vmdk $vmdk_template_dir