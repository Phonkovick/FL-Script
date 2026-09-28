#Requires AutoHotkey v2.0
#SingleInstance Force

; FL Studio generator hotkeys:
; Alt+R       = generate a completely new melody
; Alt+Shift+R = open settings

configPath := A_MyDocuments "\Image-Line\FL Studio\Settings\MelodyReroll.ini"

EnsureConfig() {
    global configPath
    SplitPath(configPath, , &dir)
    DirCreate(dir)
    if !FileExist(configPath) {
        IniWrite("C#", configPath, "Melody", "root")
        IniWrite("Natural Minor", configPath, "Melody", "scale")
        IniWrite("1/8", configPath, "Melody", "note_length")
        IniWrite("4", configPath, "Melody", "bars")
        IniWrite("78", configPath, "Melody", "density")
        IniWrite("1", configPath, "Melody", "bass")
        IniWrite("2", configPath, "Melody", "bass_color")
        IniWrite("0", configPath, "Melody", "slide_chance")
        IniWrite("random", configPath, "Melody", "seed_mode")
    }
}

EnsureConfig()

#HotIf WinActive("ahk_exe FL64.exe")
!r::GenerateMelody()
!+r::OpenSettings()
#HotIf

GenerateMelody() {
    ; Ctrl+Alt+Y = FL Studio "Run last script" in Piano Roll.
    ; Enter confirms the tiny script dialog immediately.
    Send("^!y")
    Sleep(80)
    Send("{Enter}")
}

OpenSettings() {
    global configPath

    root := IniRead(configPath, "Melody", "root", "C#")
    scale := IniRead(configPath, "Melody", "scale", "Natural Minor")
    noteLen := IniRead(configPath, "Melody", "note_length", "1/8")
    bars := IniRead(configPath, "Melody", "bars", "4")
    density := IniRead(configPath, "Melody", "density", "78")
    bass := IniRead(configPath, "Melody", "bass", "1")
    bassColor := IniRead(configPath, "Melody", "bass_color", "2")
    slide := IniRead(configPath, "Melody", "slide_chance", "0")

    settingsGui := Gui(, "Melody Reroll Settings")
    settingsGui.SetFont("s10", "Segoe UI")

    settingsGui.AddText("xm", "Тональность")
    rootBox := settingsGui.AddDropDownList("w150", ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"])
    rootBox.Text := root

    settingsGui.AddText("xm", "Гамма")
    scaleBox := settingsGui.AddDropDownList("w150", ["Major","Natural Minor","Minor Pentatonic","Major Pentatonic","Dorian"])
    scaleBox.Text := scale

    settingsGui.AddText("xm", "Длина ноты")
    noteBox := settingsGui.AddDropDownList("w150", ["1/2","1/4","1/8","1/16","1/32"])
    noteBox.Text := noteLen

    settingsGui.AddText("xm", "Длина мелодии (тактов)")
    barsBox := settingsGui.AddEdit("w150 Number", bars)

    settingsGui.AddText("xm", "Плотность нот (%)")
    densityBox := settingsGui.AddEdit("w150 Number", density)

    bassBox := settingsGui.AddCheckbox("xm", "Добавлять бас")
    bassBox.Value := bass = "1"

    settingsGui.AddText("xm", "Цвет басовой линии (1–16)")
    colorBox := settingsGui.AddEdit("w150 Number", bassColor)

    settingsGui.AddText("xm", "Шанс slide-нот (%)")
    slideBox := settingsGui.AddEdit("w150 Number", slide)

    save := settingsGui.AddButton("xm w150", "Сохранить")
    save.OnEvent("Click", (*) => SaveAndClose())
    settingsGui.AddButton("x+8 w70", "Отмена").OnEvent("Click", (*) => settingsGui.Destroy())

    settingsGui.Show()

    SaveAndClose() {
        IniWrite(rootBox.Text, configPath, "Melody", "root")
        IniWrite(scaleBox.Text, configPath, "Melody", "scale")
        IniWrite(noteBox.Text, configPath, "Melody", "note_length")

        b := Integer(barsBox.Text)
        if b < 1
            b := 1
        if b > 16
            b := 16
        IniWrite(b, configPath, "Melody", "bars")

        d := Integer(densityBox.Text)
        if d < 15
            d := 15
        if d > 100
            d := 100
        IniWrite(d, configPath, "Melody", "density")

        IniWrite(bassBox.Value ? 1 : 0, configPath, "Melody", "bass")

        c := Integer(colorBox.Text)
        if c < 1
            c := 1
        if c > 16
            c := 16
        IniWrite(c, configPath, "Melody", "bass_color")

        s := Integer(slideBox.Text)
        if s < 0
            s := 0
        if s > 100
            s := 100
        IniWrite(s, configPath, "Melody", "slide_chance")

        settingsGui.Destroy()
    }
}
