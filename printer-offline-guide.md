# Guide: How to fix an offline printer

## Quick checklist (1 minute)

1. **Is the printer turned on?** Look for a power light.
2. **Is it plugged in?** Check both ends of the power cord.
3. **Is there paper?** Check the paper tray.
4. **Is there ink/toner?** Check ink levels on the screen.

## Step-by-step (5 minutes)

### 1. Restart everything (this works 80% of the time)
1. Turn off the printer
2. Restart your computer
3. Wait for computer to fully start
4. Turn the printer back on
5. Try printing

### 2. Set as default printer (Windows)
1. Press `Windows + I` to open Settings
2. Go to "Bluetooth & devices" → "Printers & scanners"
3. Find your printer in the list
4. Click on it and select "Set as default"

### 3. Clear print queue
1. Open "Printers & scanners" settings
2. Click on your printer
3. Select "Open print queue"
4. Click "Printer" menu → "Cancel All Documents"
5. Restart the Print Spooler service:
   - Press `Windows + R`, type `services.msc`
   - Find "Print Spooler", right-click → "Restart"

## When to call IT support
- Printer shows error light pattern (check manual)
- Paper jam that you can't clear
- Network printer not found by any computer
