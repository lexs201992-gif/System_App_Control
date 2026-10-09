### OSU Delivery (via Google APEX OsuLogin)

The OSU Login (`com.android.hotspot2.osulogin`, Google APEX, platform-signed)
is a **display component only**. It loads the OSU server URI (defined by
`UniWifiApConfigStore` in Axis 1) in a WebView bound to the OSU network.

Relevant config: `cleartextTrafficPermitted="true"` + `src="system"` (no user
CAs trusted). The OSU server can deliver CA install intents over HTTP
(cleartext) or HTTPS (system/WFA CAs only).

The OSU Login does NOT install CAs. It displays the page. The installation
happens in `com.android.certinstaller` (Longcheer-signed, §CertInstaller).   

Axis 1: UniWifiApConfigStore (kiosk)
  │
  │  Define: OSU server URI (en el Passpoint config)
  │  Ej: "https://rogue-osu.attacker.com/signup"
  │  O:   "http://192.168.1.1:8080/cert_install"  ← cleartext (permitido)
  │
  ▼
Usuario se conecta al Passpoint (auto-join, sin prompt)
  │
  ▼
Android detecta OSU → lanza OsuLoginActivity (Google APEX)
  │
  │  WebView carga la URL del OSU server
  │  bindProcessToNetwork → solo por WiFi OSU
  │
  ▼
OSU server (rogue) entrega:
  │
  ├── Opción A: Página HTML con <a href="intent:#Intent;action=android.credentials.INSTALL_AS_USER;...">
  │     → Usuario toca → CertInstaller (Longcheer) → CA rogue instalada
  │
  ├── Opción B: Página HTML con JS que dispara el intent automáticamente
  │     → Sin interacción (si el usuario no cierra el WebView)
  │
  └── Opción C: Download de .crt / .wificonfig
        → CertInstallerMain (VIEW) → WiFiInstaller / CertInstaller   

