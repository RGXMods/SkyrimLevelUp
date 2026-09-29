--=====================================================================================
-- SRLU | Skyrim Level-Up! - locales.lua
-- Version: 2.1.2
-- Author: DonnieDice
-- Description: Multi-language localization system for SRLU
--=====================================================================================

-- Ensure global addon namespace exists
SRLU = SRLU or {}

-- Initialize localization table
SRLU.L = SRLU.L or {}

-- Get current WoW client locale
local locale = GetLocale()

-- Default English strings (always loaded as fallback)
local L = {
    -- Status Messages
    ["ADDON_ENABLED"] = "Addon |cff00ff00enabled|r",
    ["ADDON_DISABLED"] = "Addon |cffff0000disabled|r",
    ["PLAYING_TEST"] = "Playing test sound...",
    ["SOUND_VARIANT_SET"] = "Sound variant set to: |cffffffff%s|r",
    ["WELCOME_MESSAGE"] = "Welcome to SRLU! Type |cffffffff/srlu help|r for commands",
    
    -- Error Messages
    ["ERROR_PREFIX"] = "|cffff0000SRLU Error:|r",
    ["ERROR_INVALID_VARIANT_OPTIONS"] = "Invalid sound variant. Use: high, med, or low",
    ["ERROR_UNKNOWN_COMMAND"] = "Unknown command. Type |cffffffff/srlu help|r for available commands",
    ["ERROR_SOUND_FAILED"] = "Failed to play sound file",
    ["ERROR_INVALID_SOUND_VARIANT"] = "Invalid sound variant",
    
    -- Help System
    ["HELP_HEADER"] = "|cffa0a0a0=== SRLU Commands ===|r",
    ["HELP_TEST"] = "|cffffffff/srlu test|r - Play test sound",
    ["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Enable addon",
    ["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Disable addon",
    ["HELP_HIGH"] = "|cffffffff/srlu high|r - Use high quality sound",
    ["HELP_MED"] = "|cffffffff/srlu med|r - Use medium quality sound",
    ["HELP_LOW"] = "|cffffffff/srlu low|r - Use low quality sound",
    
    -- Status Display
    ["STATUS_HEADER"] = "|cffa0a0a0=== SRLU Status ===|r",
    ["STATUS_STATUS"] = "Status:",
    ["STATUS_SOUND"] = "Sound Variant: |cffffffff%s|r",
    ["STATUS_MUTE"] = "Mute Default:",
    ["STATUS_VERSION"] = "Version: |cffffffff%s|r",
    ["STATUS_VOLUME"] = "Volume Channel: |cffffffff%s|r",
    
    -- General Status
    ["ENABLED_STATUS"] = "|cff00ff00Enabled|r",
    ["DISABLED_STATUS"] = "|cffff0000Disabled|r",
    ["YES"] = "|cff00ff00Yes|r",
    ["NO"] = "|cffff0000No|r",
    ["TYPE_HELP"] = "Type |cffffffff/srlu help|r for commands",
    
    -- Sound Variants
    ["SOUND_HIGH"] = "High",
    ["SOUND_MEDIUM"] = "Medium", 
    ["SOUND_LOW"] = "Low",
    
    -- Volume Channels
    ["VOLUME_SET"] = "Volume channel set to: |cffffffff%s|r",
    ["ERROR_INVALID_VOLUME"] = "Invalid volume channel. Use: Master, SFX, Music, or Ambience",
    
    -- RGX Mods Branding
    ["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r",
    ["COMMUNITY_MESSAGE"] = "Part of the RealmGX Community - join us at discord.gg/hK9N3esnce"
}

-- Russian localization by ZamestoTV (Hubbotu)
if locale == "ruRU" then
    L["ADDON_ENABLED"] = "Аддон |cff00ff00включен|r"
    L["ADDON_DISABLED"] = "Аддон |cffff0000отключен|r"
    L["PLAYING_TEST"] = "Воспроизведение тестового звука..."
    L["SOUND_VARIANT_SET"] = "Вариант звука установлен на: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "Добро пожаловать в SRLU! Введите |cffffffff/srlu help|r для команд"
    
    L["ERROR_PREFIX"] = "|cffff0000Ошибка SRLU:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Недопустимый вариант звука. Используйте: high, med или low"
    L["ERROR_UNKNOWN_COMMAND"] = "Неизвестная команда. Введите |cffffffff/srlu help|r для доступных команд"
    L["ERROR_SOUND_FAILED"] = "Не удалось воспроизвести звуковой файл"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Недопустимый вариант звука"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== Команды SRLU ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Воспроизвести тестовый звук"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Включить аддон"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Отключить аддон"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Использовать звук высокого качества"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Использовать звук среднего качества"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Использовать звук низкого качества"
    
    L["VOLUME_SET"] = "Канал громкости установлен на: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Недопустимый канал громкости. Используйте: Master, SFX, Music или Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== Статус SRLU ===|r"
    L["STATUS_STATUS"] = "Статус:"
    L["STATUS_SOUND"] = "Вариант звука: |cffffffff%s|r"
    L["STATUS_MUTE"] = "Отключение звука по умолчанию:"
    L["STATUS_VERSION"] = "Версия: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Канал громкости: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Включен|r"
    L["DISABLED_STATUS"] = "|cffff0000Отключен|r"
    L["YES"] = "|cff00ff00Да|r"
    L["NO"] = "|cffff0000Нет|r"
    L["TYPE_HELP"] = "Введите |cffffffff/srlu help|r для команд"
    
    L["SOUND_HIGH"] = "Высокий"
    L["SOUND_MEDIUM"] = "Средний"
    L["SOUND_LOW"] = "Низкий"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Часть сообщества RealmGX - присоединяйтесь к нам на discord.gg/hK9N3esnce"

-- German localization
elseif locale == "deDE" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00aktiviert|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000deaktiviert|r"
    L["PLAYING_TEST"] = "Testsound wird abgespielt..."
    L["SOUND_VARIANT_SET"] = "Sound-Variante gesetzt auf: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "Willkommen bei SRLU! Tippe |cffffffff/srlu help|r für Befehle"
    
    L["ERROR_PREFIX"] = "|cffff0000SRLU Fehler:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Ungültige Sound-Variante. Verwende: high, med oder low"
    L["ERROR_UNKNOWN_COMMAND"] = "Unbekannter Befehl. Tippe |cffffffff/srlu help|r für verfügbare Befehle"
    L["ERROR_SOUND_FAILED"] = "Fehler beim Abspielen der Sounddatei"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Ungültige Sound-Variante"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== SRLU Befehle ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Testsound abspielen"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Addon aktivieren"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Addon deaktivieren"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Sound hoher Qualität verwenden"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Sound mittlerer Qualität verwenden"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Sound niedriger Qualität verwenden"
    
    L["VOLUME_SET"] = "Lautstärkekanal gesetzt auf: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Ungültiger Lautstärkekanal. Verwende: Master, SFX, Music oder Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== SRLU Status ===|r"
    L["STATUS_STATUS"] = "Status:"
    L["STATUS_SOUND"] = "Sound-Variante: |cffffffff%s|r"
    L["STATUS_MUTE"] = "Standard stumm:"
    L["STATUS_VERSION"] = "Version: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Lautstärke-Kanal: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Aktiviert|r"
    L["DISABLED_STATUS"] = "|cffff0000Deaktiviert|r"
    L["YES"] = "|cff00ff00Ja|r"
    L["NO"] = "|cffff0000Nein|r"
    L["TYPE_HELP"] = "Tippe |cffffffff/srlu help|r für Befehle"
    
    L["SOUND_HIGH"] = "Hoch"
    L["SOUND_MEDIUM"] = "Mittel"
    L["SOUND_LOW"] = "Niedrig"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Teil der RealmGX Community - tritt uns bei: discord.gg/hK9N3esnce"

-- French localization
elseif locale == "frFR" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00activé|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000désactivé|r"
    L["PLAYING_TEST"] = "Lecture du son de test..."
    L["SOUND_VARIANT_SET"] = "Variante sonore définie sur : |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "Bienvenue dans SRLU ! Tapez |cffffffff/srlu help|r pour les commandes"
    
    L["ERROR_PREFIX"] = "|cffff0000Erreur SRLU:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Variante sonore invalide. Utilisez : high, med ou low"
    L["ERROR_UNKNOWN_COMMAND"] = "Commande inconnue. Tapez |cffffffff/srlu help|r pour les commandes disponibles"
    L["ERROR_SOUND_FAILED"] = "Échec de la lecture du fichier sonore"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Variante sonore invalide"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== Commandes SRLU ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Jouer le son de test"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Activer l'addon"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Désactiver l'addon"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Utiliser le son de haute qualité"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Utiliser le son de qualité moyenne"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Utiliser le son de basse qualité"
    
    L["VOLUME_SET"] = "Canal de volume défini sur : |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Canal de volume invalide. Utilisez : Master, SFX, Music ou Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== Statut SRLU ===|r"
    L["STATUS_STATUS"] = "Statut :"
    L["STATUS_SOUND"] = "Variante sonore : |cffffffff%s|r"
    L["STATUS_MUTE"] = "Muet par défaut :"
    L["STATUS_VERSION"] = "Version : |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Canal de volume : |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Activé|r"
    L["DISABLED_STATUS"] = "|cffff0000Désactivé|r"
    L["YES"] = "|cff00ff00Oui|r"
    L["NO"] = "|cffff0000Non|r"
    L["TYPE_HELP"] = "Tapez |cffffffff/srlu help|r pour les commandes"
    
    L["SOUND_HIGH"] = "Élevé"
    L["SOUND_MEDIUM"] = "Moyen"
    L["SOUND_LOW"] = "Bas"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Partie de la communauté RealmGX - rejoignez-nous sur discord.gg/hK9N3esnce"

-- Spanish localization (esES serves Spain Spanish; esMX falls back to the same
-- Latin-American-compatible strings under the existing shared guard)
elseif locale == "esES" or locale == "esMX" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00habilitado|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000deshabilitado|r"
    L["PLAYING_TEST"] = "Reproduciendo sonido de prueba..."
    L["SOUND_VARIANT_SET"] = "Variante de sonido establecida en: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "¡Bienvenido a SRLU! Escribe |cffffffff/srlu help|r para comandos"
    
    L["ERROR_PREFIX"] = "|cffff0000Error SRLU:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Variante de sonido inválida. Usa: high, med o low"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando desconocido. Escribe |cffffffff/srlu help|r para comandos disponibles"
    L["ERROR_SOUND_FAILED"] = "Error al reproducir archivo de sonido"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Variante de sonido inválida"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== Comandos SRLU ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Reproducir sonido de prueba"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Habilitar el addon"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Deshabilitar el addon"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Usar sonido de alta calidad"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Usar sonido de calidad media"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Usar sonido de baja calidad"
    
    L["VOLUME_SET"] = "Canal de volumen establecido en: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Canal de volumen inválido. Usa: Master, SFX, Music o Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== Estado SRLU ===|r"
    L["STATUS_STATUS"] = "Estado:"
    L["STATUS_SOUND"] = "Variante de sonido: |cffffffff%s|r"
    L["STATUS_MUTE"] = "Silenciar por defecto:"
    L["STATUS_VERSION"] = "Versión: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Canal de volumen: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Habilitado|r"
    L["DISABLED_STATUS"] = "|cffff0000Deshabilitado|r"
    L["YES"] = "|cff00ff00Sí|r"
    L["NO"] = "|cffff0000No|r"
    L["TYPE_HELP"] = "Escribe |cffffffff/srlu help|r para comandos"
    
    L["SOUND_HIGH"] = "Alto"
    L["SOUND_MEDIUM"] = "Medio"
    L["SOUND_LOW"] = "Bajo"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Parte de la comunidad RealmGX - únete a nosotros en discord.gg/hK9N3esnce"

-- Italian localization
elseif locale == "itIT" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00attivato|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000disattivato|r"
    L["PLAYING_TEST"] = "Riproduzione del suono di prova..."
    L["SOUND_VARIANT_SET"] = "Variante del suono impostata su: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "Benvenuto in SRLU! Digita |cffffffff/srlu help|r per i comandi"
    
    L["ERROR_PREFIX"] = "|cffff0000Errore SRLU:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Variante del suono non valida. Usa: high, med o low"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando sconosciuto. Digita |cffffffff/srlu help|r per i comandi disponibili"
    L["ERROR_SOUND_FAILED"] = "Impossibile riprodurre il file audio"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Variante del suono non valida"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== Comandi SRLU ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Riproduci il suono di prova"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Attiva l'addon"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Disattiva l'addon"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Usa il suono di alta qualità"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Usa il suono di qualità media"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Usa il suono di bassa qualità"
    
    L["VOLUME_SET"] = "Canale del volume impostato su: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Canale del volume non valido. Usa: Master, SFX, Music o Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== Stato SRLU ===|r"
    L["STATUS_STATUS"] = "Stato:"
    L["STATUS_SOUND"] = "Variante del suono: |cffffffff%s|r"
    L["STATUS_MUTE"] = "Silenzia predefinito:"
    L["STATUS_VERSION"] = "Versione: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Canale del volume: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Attivato|r"
    L["DISABLED_STATUS"] = "|cffff0000Disattivato|r"
    L["YES"] = "|cff00ff00Sì|r"
    L["NO"] = "|cffff0000No|r"
    L["TYPE_HELP"] = "Digita |cffffffff/srlu help|r per i comandi"
    
    L["SOUND_HIGH"] = "Alto"
    L["SOUND_MEDIUM"] = "Medio"
    L["SOUND_LOW"] = "Basso"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Parte della community RealmGX - unisciti a noi su discord.gg/hK9N3esnce"

-- Korean localization
elseif locale == "koKR" then
    L["ADDON_ENABLED"] = "애드온 |cff00ff00활성화됨|r"
    L["ADDON_DISABLED"] = "애드온 |cffff0000비활성화됨|r"
    L["PLAYING_TEST"] = "테스트 사운드 재생 중..."
    L["SOUND_VARIANT_SET"] = "사운드 변형 설정: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "SRLU에 오신 것을 환영합니다! 명령어는 |cffffffff/srlu help|r를 입력하세요"
    
    L["ERROR_PREFIX"] = "|cffff0000SRLU 오류:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "잘못된 사운드 변형입니다. 사용 가능: high, med 또는 low"
    L["ERROR_UNKNOWN_COMMAND"] = "알 수 없는 명령어입니다. 사용 가능한 명령어는 |cffffffff/srlu help|r를 입력하세요"
    L["ERROR_SOUND_FAILED"] = "사운드 파일을 재생하지 못했습니다"
    L["ERROR_INVALID_SOUND_VARIANT"] = "잘못된 사운드 변형입니다"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== SRLU 명령어 ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - 테스트 사운드 재생"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - 애드온 활성화"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - 애드온 비활성화"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - 고품질 사운드 사용"
    L["HELP_MED"] = "|cffffffff/srlu med|r - 중간 품질 사운드 사용"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - 저품질 사운드 사용"
    
    L["VOLUME_SET"] = "볼륨 채널 설정: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "잘못된 볼륨 채널입니다. 사용 가능: Master, SFX, Music 또는 Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== SRLU 상태 ===|r"
    L["STATUS_STATUS"] = "상태:"
    L["STATUS_SOUND"] = "사운드 변형: |cffffffff%s|r"
    L["STATUS_MUTE"] = "기본 음소거:"
    L["STATUS_VERSION"] = "버전: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "볼륨 채널: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00활성화됨|r"
    L["DISABLED_STATUS"] = "|cffff0000비활성화됨|r"
    L["YES"] = "|cff00ff00예|r"
    L["NO"] = "|cffff0000아니요|r"
    L["TYPE_HELP"] = "명령어는 |cffffffff/srlu help|r를 입력하세요"
    
    L["SOUND_HIGH"] = "높음"
    L["SOUND_MEDIUM"] = "중간"
    L["SOUND_LOW"] = "낮음"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "RealmGX 커뮤니티의 일부입니다 - discord.gg/hK9N3esnce에서 만나세요"

-- Brazilian Portuguese localization
elseif locale == "ptBR" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00ativado|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000desativado|r"
    L["PLAYING_TEST"] = "Reproduzindo som de teste..."
    L["SOUND_VARIANT_SET"] = "Variante de som definida para: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "Bem-vindo ao SRLU! Digite |cffffffff/srlu help|r para comandos"
    
    L["ERROR_PREFIX"] = "|cffff0000Erro SRLU:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Variante de som inválida. Use: high, med ou low"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando desconhecido. Digite |cffffffff/srlu help|r para comandos disponíveis"
    L["ERROR_SOUND_FAILED"] = "Falha ao reproduzir arquivo de som"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Variante de som inválida"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== Comandos SRLU ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Reproduzir som de teste"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Ativar o addon"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Desativar o addon"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Usar som de alta qualidade"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Usar som de qualidade média"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Usar som de baixa qualidade"
    
    L["VOLUME_SET"] = "Canal de volume definido para: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Canal de volume inválido. Use: Master, SFX, Music ou Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== Status SRLU ===|r"
    L["STATUS_STATUS"] = "Status:"
    L["STATUS_SOUND"] = "Variante de som: |cffffffff%s|r"
    L["STATUS_MUTE"] = "Silenciar por padrão:"
    L["STATUS_VERSION"] = "Versão: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Canal de volume: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Ativado|r"
    L["DISABLED_STATUS"] = "|cffff0000Desativado|r"
    L["YES"] = "|cff00ff00Sim|r"
    L["NO"] = "|cffff0000Não|r"
    L["TYPE_HELP"] = "Digite |cffffffff/srlu help|r para comandos"
    
    L["SOUND_HIGH"] = "Alto"
    L["SOUND_MEDIUM"] = "Médio"
    L["SOUND_LOW"] = "Baixo"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Parte da comunidade RealmGX - junte-se a nós em discord.gg/hK9N3esnce"

-- European Portuguese localization
elseif locale == "ptPT" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00ativado|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000desativado|r"
    L["PLAYING_TEST"] = "A reproduzir o som de teste..."
    L["SOUND_VARIANT_SET"] = "Variante de som definida para: |cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "Bem-vindo ao SRLU! Escreva |cffffffff/srlu help|r para comandos"
    
    L["ERROR_PREFIX"] = "|cffff0000Erro SRLU:|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "Variante de som inválida. Use: high, med ou low"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando desconhecido. Escreva |cffffffff/srlu help|r para comandos disponíveis"
    L["ERROR_SOUND_FAILED"] = "Falha ao reproduzir ficheiro de som"
    L["ERROR_INVALID_SOUND_VARIANT"] = "Variante de som inválida"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== Comandos SRLU ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - Reproduzir som de teste"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - Ativar o addon"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - Desativar o addon"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - Usar som de alta qualidade"
    L["HELP_MED"] = "|cffffffff/srlu med|r - Usar som de qualidade média"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - Usar som de baixa qualidade"
    
    L["VOLUME_SET"] = "Canal de volume definido para: |cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "Canal de volume inválido. Use: Master, SFX, Music ou Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== Estado SRLU ===|r"
    L["STATUS_STATUS"] = "Estado:"
    L["STATUS_SOUND"] = "Variante de som: |cffffffff%s|r"
    L["STATUS_MUTE"] = "Silenciar por predefinição:"
    L["STATUS_VERSION"] = "Versão: |cffffffff%s|r"
    L["STATUS_VOLUME"] = "Canal de volume: |cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00Ativado|r"
    L["DISABLED_STATUS"] = "|cffff0000Desativado|r"
    L["YES"] = "|cff00ff00Sim|r"
    L["NO"] = "|cffff0000Não|r"
    L["TYPE_HELP"] = "Escreva |cffffffff/srlu help|r para comandos"
    
    L["SOUND_HIGH"] = "Alto"
    L["SOUND_MEDIUM"] = "Médio"
    L["SOUND_LOW"] = "Baixo"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "Parte da comunidade RealmGX - junta-te a nós em discord.gg/hK9N3esnce"

-- Simplified Chinese localization
elseif locale == "zhCN" then
    L["ADDON_ENABLED"] = "插件已|cff00ff00启用|r"
    L["ADDON_DISABLED"] = "插件已|cffff0000禁用|r"
    L["PLAYING_TEST"] = "正在播放测试音效..."
    L["SOUND_VARIANT_SET"] = "音效变体已设置为：|cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "欢迎来到 SRLU！输入 |cffffffff/srlu help|r 查看命令"
    
    L["ERROR_PREFIX"] = "|cffff0000SRLU 错误：|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "无效的音效变体。请使用：high、med 或 low"
    L["ERROR_UNKNOWN_COMMAND"] = "未知命令。输入 |cffffffff/srlu help|r 查看可用命令"
    L["ERROR_SOUND_FAILED"] = "无法播放音效文件"
    L["ERROR_INVALID_SOUND_VARIANT"] = "无效的音效变体"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== SRLU 命令 ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - 播放测试音效"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - 启用插件"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - 禁用插件"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - 使用高音质音效"
    L["HELP_MED"] = "|cffffffff/srlu med|r - 使用中等音质音效"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - 使用低音质音效"
    
    L["VOLUME_SET"] = "音量通道已设置为：|cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "无效的音量通道。请使用：Master、SFX、Music 或 Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== SRLU 状态 ===|r"
    L["STATUS_STATUS"] = "状态："
    L["STATUS_SOUND"] = "音效变体：|cffffffff%s|r"
    L["STATUS_MUTE"] = "默认静音："
    L["STATUS_VERSION"] = "版本：|cffffffff%s|r"
    L["STATUS_VOLUME"] = "音量通道：|cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00已启用|r"
    L["DISABLED_STATUS"] = "|cffff0000已禁用|r"
    L["YES"] = "|cff00ff00是|r"
    L["NO"] = "|cffff0000否|r"
    L["TYPE_HELP"] = "输入 |cffffffff/srlu help|r 查看命令"
    
    L["SOUND_HIGH"] = "高"
    L["SOUND_MEDIUM"] = "中"
    L["SOUND_LOW"] = "低"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "RealmGX 社区的一部分 - 加入我们：discord.gg/hK9N3esnce"

-- Traditional Chinese localization
elseif locale == "zhTW" then
    L["ADDON_ENABLED"] = "插件已|cff00ff00啟用|r"
    L["ADDON_DISABLED"] = "插件已|cffff0000停用|r"
    L["PLAYING_TEST"] = "正在播放測試音效..."
    L["SOUND_VARIANT_SET"] = "音效變體已設定為：|cffffffff%s|r"
    L["WELCOME_MESSAGE"] = "歡迎來到 SRLU！輸入 |cffffffff/srlu help|r 查看命令"
    
    L["ERROR_PREFIX"] = "|cffff0000SRLU 錯誤：|r"
    L["ERROR_INVALID_VARIANT_OPTIONS"] = "無效的音效變體。請使用：high、med 或 low"
    L["ERROR_UNKNOWN_COMMAND"] = "未知命令。輸入 |cffffffff/srlu help|r 查看可用命令"
    L["ERROR_SOUND_FAILED"] = "無法播放音效檔案"
    L["ERROR_INVALID_SOUND_VARIANT"] = "無效的音效變體"
    
    L["HELP_HEADER"] = "|cffa0a0a0=== SRLU 命令 ===|r"
    L["HELP_TEST"] = "|cffffffff/srlu test|r - 播放測試音效"
    L["HELP_ENABLE"] = "|cffffffff/srlu enable|r - 啟用插件"
    L["HELP_DISABLE"] = "|cffffffff/srlu disable|r - 停用插件"
    L["HELP_HIGH"] = "|cffffffff/srlu high|r - 使用高音質音效"
    L["HELP_MED"] = "|cffffffff/srlu med|r - 使用中等音質音效"
    L["HELP_LOW"] = "|cffffffff/srlu low|r - 使用低音質音效"
    
    L["VOLUME_SET"] = "音量頻道已設定為：|cffffffff%s|r"
    L["ERROR_INVALID_VOLUME"] = "無效的音量頻道。請使用：Master、SFX、Music 或 Ambience"
    
    L["STATUS_HEADER"] = "|cffa0a0a0=== SRLU 狀態 ===|r"
    L["STATUS_STATUS"] = "狀態："
    L["STATUS_SOUND"] = "音效變體：|cffffffff%s|r"
    L["STATUS_MUTE"] = "預設靜音："
    L["STATUS_VERSION"] = "版本：|cffffffff%s|r"
    L["STATUS_VOLUME"] = "音量頻道：|cffffffff%s|r"
    
    L["ENABLED_STATUS"] = "|cff00ff00已啟用|r"
    L["DISABLED_STATUS"] = "|cffff0000已停用|r"
    L["YES"] = "|cff00ff00是|r"
    L["NO"] = "|cffff0000否|r"
    L["TYPE_HELP"] = "輸入 |cffffffff/srlu help|r 查看命令"
    
    L["SOUND_HIGH"] = "高"
    L["SOUND_MEDIUM"] = "中"
    L["SOUND_LOW"] = "低"
    
    L["RGX_MODS_PREFIX"] = "|cffa0a0a0RGX Mods|r"
    L["COMMUNITY_MESSAGE"] = "RealmGX 社群的一部分 - 加入我們：discord.gg/hK9N3esnce"
end

-- Assign localization table to global addon namespace
SRLU.L = L

-- Provide fallback function for missing translations
function SRLU:GetLocalizedString(key)
    if self.L and self.L[key] then
        return self.L[key]
    end
    
    -- Return the key itself if no translation found (for debugging)
    return key
end
