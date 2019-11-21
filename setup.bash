#!/bin/bash
# Description: install and remove elasticsearch plugins

set -eoux pipefail

cmd=/usr/share/elasticsearch/bin/elasticsearch-plugin
plugins=(repository-s3 repository-gcs https://github.com/vvanholl/elasticsearch-prometheus-exporter/releases/download/6.8.4.0/prometheus-exporter-6.8.4.0.zip)
remove_plugins=(x-pack)

# install additional plugins
for plugin in "${plugins[@]}"; do
  ${cmd} install -s -b "${plugin}"
done

# remove already installed plugins
for plugin in "${remove_plugins[@]}"; do
  ${cmd} remove -s -p "${plugin}"
done

# installed elasticsearch plugins
${cmd} list
