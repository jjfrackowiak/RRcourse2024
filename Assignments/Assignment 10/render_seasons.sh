#!/bin/bash

# Name of the .qmd file to render
QMD_FILE="got_report.qmd"

# Loop through seasons from 1 to 10
for season in {1..8}; do
    echo "Rendering season $season"
    quarto render "$QMD_FILE" --to pdf --output "got_report_$season.pdf" -P season_no:$season
done

echo "Rendering complete!"
