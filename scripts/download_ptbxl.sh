#!/bin/bash

echo "Downloading PTB-XL dataset..."
wget -r -N -c -np --quiet --show-progress -P data/ https://physionet.org/files/ptb-xl/1.0.3/
echo "Download complete!"