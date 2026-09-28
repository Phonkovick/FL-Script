FL Melody Generator

1) Copy Melody_Generator.pyscript to:
Documents\Image-Line\FL Studio\Settings\Piano roll scripts

2) In FL Studio, open Piano Roll and run Melody_Generator once from:
Tools > Script > Script list
This makes it the 'last script' used by Ctrl+Alt+Y.

3) Run Melody_Reroll_AltR.ahk with AutoHotkey v2.

4) In FL Studio:
Alt+R = instantly generate a new melody from the current settings.
Alt+Shift+R = open settings.

Settings are saved to:
Documents\Image-Line\FL Studio\Settings\MelodyReroll.ini

Default:
C# Natural Minor, 1/8 notes, 4 bars, 78% density,
bass ON, bass color 2, slide chance 0%.

Slide notes are supported by the Piano Roll API, but they only affect pitch
transition on instruments that support FL Studio slide events. They are not
normal sounding notes.
