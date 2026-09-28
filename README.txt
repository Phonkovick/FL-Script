# 🎹 FL Melody Generator

A small melody generator for **FL Studio Piano Roll**.

It can generate a melody from an empty Piano Roll using a simple **Alt+R** hotkey, with configurable rhythm, key, scale, note density, bass and slide notes.

## ✨ Features

* 🎲 Generate a new melody with **Alt+R**
* ⚙️ Open generator settings with **Alt+Shift+R**
* 🎵 Choose key and scale
* ⏱️ Choose note length: `1/2`, `1/4`, `1/8`, `1/16`, `1/32`
* 📏 Choose melody length
* 🎚️ Adjust note density
* 🔊 Optional bass line
* 🎨 Choose bass note color
* ↗️ Optional slide notes
* 💾 Settings are saved automatically

## 📦 Installation

### 1. Install the Piano Roll script

Copy:

```text
Melody_Generator.pyscript
```

to:

```text
Documents\Image-Line\FL Studio\Settings\Piano roll scripts
```

### 2. Register the script in FL Studio

Open **Piano Roll** and run:

```text
Tools → Script → Script list → Melody_Generator
```

Run the script once.

This makes it the last Piano Roll script used by:

```text
Ctrl + Alt + Y
```

### 3. Install AutoHotkey

Install **AutoHotkey v2**.

Then run:

```text
Melody_Reroll_AltR.ahk
```

### 4. Use the generator

Inside FL Studio:

```text
Alt + R
```

Generate a new melody.

```text
Alt + Shift + R
```

Open generator settings.

## ⚙️ Default settings

```text
Key: C#
Scale: Natural Minor
Note length: 1/8
Length: 4 bars
Density: 78%
Bass: ON
Bass color: 2
Slide chance: 0%
```

## 💾 Settings location

The generator stores its settings in:

```text
Documents\Image-Line\FL Studio\Settings\MelodyReroll.ini
```

## 🎹 How it works

The generator can create a melody even when the Piano Roll is completely empty.

Each press of **Alt+R** generates a new variation using the current settings.

The generator creates MIDI notes directly through the FL Studio Piano Roll scripting API.

## ↗️ Slide notes

Slide notes are supported by the FL Studio Piano Roll API.

They are not normal sounding notes. Instead, they control pitch transitions on instruments that support FL Studio slide events.

For that reason, the default slide chance is:

```text
0%
```

# 🎹 FL Melody Generator

Небольшой генератор мелодий для **Piano Roll в FL Studio**.

Он умеет создавать мелодию прямо из пустого Piano Roll по горячей клавише **Alt+R**.

## ✨ Возможности

* 🎲 Генерация новой мелодии через **Alt+R**
* ⚙️ Настройки через **Alt+Shift+R**
* 🎵 Выбор тональности и гаммы
* ⏱️ Выбор длительности нот: `1/2`, `1/4`, `1/8`, `1/16`, `1/32`
* 📏 Настройка длины мелодии
* 🎚️ Настройка плотности нот
* 🔊 Включение и отключение басовой линии
* 🎨 Выбор цвета басовых нот
* ↗️ Возможность добавлять slide-ноты
* 💾 Автоматическое сохранение настроек

## 📦 Установка

### 1. Установите Piano Roll Script

Скопируйте:

```text
Melody_Generator.pyscript
```

в:

```text
Documents\Image-Line\FL Studio\Settings\Piano roll scripts
```

### 2. Запустите скрипт в FL Studio

Откройте **Piano Roll** и выберите:

```text
Tools → Script → Script list → Melody_Generator
```

Запустите скрипт один раз.

После этого он становится последним использованным Piano Roll Script и может запускаться через:

```text
Ctrl + Alt + Y
```

### 3. Установите AutoHotkey

Необходим **AutoHotkey v2**.

Запустите:

```text
Melody_Reroll_AltR.ahk
```

### 4. Использование

В FL Studio:

```text
Alt + R
```

Создать новую мелодию.

```text
Alt + Shift + R
```

Открыть настройки.

## ⚙️ Настройки по умолчанию

```text
Тональность: C#
Гамма: Natural Minor
Длительность нот: 1/8
Длина: 4 такта
Плотность: 78%
Бас: включён
Цвет баса: 2
Вероятность slide: 0%
```

## 💾 Где сохраняются настройки

Настройки сохраняются в:

```text
Documents\Image-Line\FL Studio\Settings\MelodyReroll.ini
```

## 🎹 Как это работает

Генератор может создать мелодию даже в полностью пустом Piano Roll.

Каждое нажатие **Alt+R** создаёт новый вариант мелодии на основе текущих настроек.

Мелодия создаётся непосредственно через Piano Roll scripting API FL Studio.

## ↗️ Slide-ноты

Slide-ноты поддерживаются API Piano Roll в FL Studio.

Они не являются обычными звучащими нотами — они управляют переходом высоты тона у инструментов, поддерживающих FL Studio slide events.

Поэтому по умолчанию вероятность их появления установлена на:

```text
0%
```

## 📄 License

This project is provided as-is for personal and educational use.
