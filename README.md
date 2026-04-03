# dayz_pve
DayZ PVE Server (Chernarus Plus)
# 🎮 DayZ PvE Server Project

## 📌 О проекте

Это кастомный PvE сервер DayZ, ориентированный на новичков.
Основная цель — создать комфортный, стабильный и понятный игровой опыт без перегрузки модами.

---

## ⚙️ Требования

Перед началом убедитесь, что у вас установлено:

* DayZ (Steam)
* DayZ Server (Steam Tools)
* DayZ Tools
* Git
* Visual Studio Code (рекомендуется)
* Mikero Tools (https://mikero.bytex.digital/Downloads) Устанавливаем нужные программы (dayz2p.1.33.9.89.Installer.exe, DeOgg.1.04.7.95.Installer.exe, DePbo.10.13.0.23.Installer.exe, DeRap.1.86.8.75.Installer.exe, Eliteness.4.31.9.92.Installer.exe, ExtractPbo.2.35.9.55.Installer.exe, MakePbo.2.16.9.36.Installer.exe, pboProject.4.30.10.04.Installer.exe, Rapify.1.93.9.46.Installer.exe

---

## 📦 Установка проекта

### 1. Клонируем репозиторий

```bash
git clone https://github.com/ВАШ-USERNAME/DayZ-Server-Project.git
```

---

### 2. Подготовка сервера

Создайте папку сервера, например:

```
D:\DayZServer\
```

Скопируйте туда:

* содержимое DayZ Server
* файлы из этого репозитория

---

### 3. Установка модов

Откройте файл:

```
scripts/install_mods.txt
```

Скачайте все моды через DayZ Launcher или Steam Workshop.

После этого:

1. Найдите папку:

```
Steam\steamapps\workshop\content\221100\
```

2. Скопируйте моды в папку сервера:

```
D:\DayZServer\@НазваниеМода\
```

3. Из каждого мода скопируйте `.bikey` в:

```
D:\DayZServer\keys\
```

---

### 4. Настройка миссии

Скопируйте папку:

```
mission/dayzOffline.chernarusplus/
```

в:

```
D:\DayZServer\mpmissions\
```

---

### 5. Запуск сервера

Отредактируйте `scripts/start.bat`, если нужно.

Запустите:

```
start.bat
```

Если всё сделано правильно — сервер запустится.

---

## 🎮 Подключение к серверу

1. Откройте DayZ Launcher
2. Вкладка "LAN" или "Direct Connect"
3. IP:

```
127.0.0.1:2302
```

---

## 🧪 Проверка работы

Убедитесь, что:

* Сервер запускается без ошибок
* Нет вылетов при подключении
* Работают моды
* Работает карта и инвентарь

Логи находятся в:

```
profiles/
```

---

## 🧠 Правила разработки

* Не добавлять моды без обсуждения
* Все изменения — через Git (commit + push)
* Не загружать моды в репозиторий
* Все кастомные изменения — в `custom/`

---

## 📂 Структура проекта

```
mission/        # миссия и экономика
config/         # serverDZ.cfg и basic.cfg
scripts/        # запуск и вспомогательные файлы
docs/           # документация
```

---

## 🚀 Планы

* Настройка экономики
* Добавление трейдеров
* PvE контент (боты, квесты)
* Стартовая зона для новичков

---

## 💬 Связь

Работа ведётся совместно. Все изменения обсуждаются перед внедрением.
