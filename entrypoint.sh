#!/bin/bash
# Start virtual display (Xvfb) agar Chrome bisa jalan tanpa monitor
Xvfb :99 -screen 0 1280x720x24 &
export DISPLAY=:99

# Tunggu Xvfb siap
sleep 1

# Jalankan solver
exec solver --port ${PORT:-8088}
