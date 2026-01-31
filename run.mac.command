#!/bin/bash
set -euo pipefail

export PYTHONWARNINGS=ignore::SyntaxWarning:DrissionPage

cd "$(dirname "$0")"

if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

source venv/bin/activate

echo "Installing dependencies..."
python -m pip install --upgrade pip
pip install -r requirements.txt

echo "Starting Cursor automation..."
python cursor_pro_keep_alive.py

echo "Completed."
echo "Press any key to exit..."
read -n 1
