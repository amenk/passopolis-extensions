{ version }: ''
{
  "name": "Passopolis Login Manager",
  "short_name": "Passopolis",
  "manifest_version": 2,
  "version": "${version}",
  "background": {
    "scripts": []
  },
  "applications": {
    "gecko": {
      "id": "passopolis@passopolis.com",
      "strict_min_version": "50.0"
    }
  },
  "description": "Securely saves passwords and lets you share them with others",
  "icons" : {
    "16": "img/passopolis-logo-16.png",
    "128": "img/passopolis-logo-128.png"
  },
  "browser_action": {
    "default_icon": {
      "19": "img/passopolis-logo-19.png",
      "38": "img/passopolis-logo-38.png"
    },
    "default_title": "Passopolis Login Manager",
    "default_popup": "html/popup.html"
  },
  "content_scripts": [
    {
      "all_frames": true,
      "matches": ["*://*/*"],
      "js": [],
      "run_at": "document_start"
    }
  ],
  "permissions": [
    "tabs",
    "cookies", "*://*/*",
    "storage",
    "clipboardWrite",
    "contextMenus"
  ],
  "web_accessible_resources": [
    "img/passopolis-logo-128.png",
    "img/close_hover.png",
    // required so content scripts and the server can open these pages
    "html/admin-dashboard.html",
    "html/admin-sync.html",
    "html/change-password.html",
    "html/popup.html",
    "html/install.html",
    "html/signup.html",
    "html/secrets.html"
  ],
  "content_security_policy": "script-src 'self'; object-src 'self'"
}
''
