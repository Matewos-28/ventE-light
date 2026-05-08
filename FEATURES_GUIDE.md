# VentE Lite - Three New Features

## 1. Telegram Bot Integration 🤖

### What It Does
- Users can chat with VentE via Telegram (no app download needed)
- Anonymous venting through Telegram messages
- AI emotional support via bot
- Crisis detection and emergency alerts
- Professional queue notifications

### Setup (FREE)

#### Step 1: Create Telegram Bot
1. Open Telegram, search for **@BotFather**
2. Send `/newbot`
3. Name it "VentE Support" 
4. Get your **API Token** (looks like: `123456789:ABCdefGHIjklMNOpqrsTUVwxyz`)

#### Step 2: Deploy Cloud Function
```bash
cd functions
npm install
firebase deploy --only functions:telegramWebhook
```

#### Step 3: Set Webhook
```bash
curl -X POST "https://api.telegram.org/bot<YOUR_TOKEN>/setWebhook"   -H "Content-Type: application/json"   -d '{"url": "https://YOUR_PROJECT.web.app/telegramWebhook"}'
```

#### Step 4: Test
Send `/start` to your bot in Telegram!

### User Commands
| Command | Action |
|---------|--------|
| `/start` | Welcome message |
| `/vent` | Share feelings anonymously |
| `/support` | Talk to AI companion |
| `/pro` | Request professional |
| `/resources` | Emergency contacts |
| `/language` | Switch language |
| `/help` | Show all commands |

### Cost
- **FREE** - Telegram Bot API has no fees
- Only standard data charges apply for users

---

## 2. SMS for Feature Phones 📱

### What It Does
- Works on ANY phone (even old Nokia/feature phones)
- No internet required
- Users send SMS to shortcode **951**
- AI responds via SMS
- Crisis alerts sent immediately
- Professional queue via SMS

### Setup (Low Cost)

#### Option A: Africa's Talking (Recommended for Ethiopia)
1. Register at [africastalking.com](https://africastalking.com)
2. Get API key and username
3. Request Ethiopian shortcode (or use shared number)
4. Configure webhook URL

```bash
# Set Firebase config
firebase functions:config:set sms.provider="africastalking"
firebase functions:config:set sms.api_key="YOUR_API_KEY"
firebase functions:config:set sms.username="YOUR_USERNAME"
firebase functions:config:set sms.shortcode="951"
```

#### Option B: Twilio (Global)
1. Register at [twilio.com](https://twilio.com)
2. Buy virtual number (~$1/month)
3. Configure webhook

### User SMS Commands
| SMS Text | Response |
|----------|----------|
| `HELP` | List of commands |
| `VENT [message]` | Post anonymously |
| `SUPPORT` | AI emotional support |
| `PRO` | Join professional queue |
| `RESOURCES` | Emergency contacts |
| `STATUS` | Queue position |
| `STOP` | Unsubscribe |

### Example Conversation
```
User: VENT I am feeling very stressed about exams
Bot: Thank you for sharing. Your vent has been posted anonymously. 
     You are not alone. Reply SUPPORT to talk.

User: SUPPORT
Bot: I hear you. It takes courage to reach out. Remember:
     - Your feelings are valid
     - This moment will pass
     - You are stronger than you know
     Reply PRO to connect with a counselor.
```

### Cost
- **Users**: Standard SMS rates (usually 0.05-0.15 ETB per SMS)
- **You**: ~$0.01 per SMS via Africa's Talking
- **FREE tier**: 100 SMS/month on Africa's Talking

---

## 3. Amharic/Oromiffa/Tigrinya Localization 🇪🇹

### What It Does
- Full UI in **Amharic** (አማርኛ)
- Full UI in **Oromiffa** (Afaan Oromoo)
- Full UI in **Tigrinya** (ትግርኛ)
- Automatic language detection from device settings
- Manual language switcher
- Culturally appropriate translations

### Setup (FREE)
Already included in the code! Just build and deploy.

### Language Switching
Users can switch language via:
1. Settings menu in app
2. Telegram: `/language` command
3. SMS: Send `LANGUAGE` to shortcode

### Cultural Adaptations
| Feature | Adaptation |
|---------|-----------|
| Greetings | "Selam" / "Akam" / "Salam" |
| Family references | Respects extended family structure |
| Religious context | Neutral, inclusive language |
| Crisis response | References local resources |
| Formality | Age-appropriate respect levels |

### Translation Coverage
- ✅ All UI elements
- ✅ Chatbot responses
- ✅ Crisis messages
- ✅ Emergency contacts
- ✅ Onboarding screens
- ✅ Error messages
- ✅ Push notifications

---

## Complete Deployment Guide

### Prerequisites
```bash
# Install Flutter
https://docs.flutter.dev/get-started/install

# Install Firebase CLI
npm install -g firebase-tools

# Install Node.js (for Cloud Functions)
https://nodejs.org
```

### Deploy All Features
```bash
# 1. Extract project
cd vente_lite

# 2. Install dependencies
flutter pub get
cd functions && npm install && cd ..

# 3. Configure API keys
firebase functions:config:set openai.key="YOUR_OPENAI_KEY"
firebase functions:config:set telegram.token="YOUR_TELEGRAM_TOKEN"
firebase functions:config:set sms.api_key="YOUR_SMS_API_KEY"

# 4. Build web app
flutter build web --release --web-renderer html

# 5. Deploy everything
firebase deploy

# 6. Set Telegram webhook
curl -X POST "https://api.telegram.org/bot<TOKEN>/setWebhook"   -d '{"url": "https://YOUR_PROJECT.web.app/telegramWebhook"}'
```

### Share With Users

**Web App:**
```
https://YOUR_PROJECT.web.app
```

**Telegram:**
```
Search for @YourBotName in Telegram
```

**SMS:**
```
Send "HELP" to 951
```

---

## Cost Summary

| Feature | Monthly Cost | Notes |
|---------|-------------|-------|
| Firebase Hosting | **FREE** | 10GB/month bandwidth |
| Firebase Functions | **FREE** | 2M invocations/month |
| Firestore | **FREE** | 1GB data, 50K reads/day |
| OpenAI API | ~$5-10 | Depends on usage |
| Telegram Bot | **FREE** | No fees |
| SMS (Africa's Talking) | ~$0-5 | 100 SMS free, then $0.01/SMS |
| **TOTAL** | **$0-15/month** | For 1000+ active users |

---

## User Access Matrix

| User Type | Web App | Telegram | SMS |
|-----------|---------|----------|-----|
| Smartphone + Data | ✅ | ✅ | ✅ |
| Smartphone, No Data | ❌ | ✅ (WiFi) | ✅ |
| Feature Phone | ❌ | ❌ | ✅ |
| Low Storage | ✅ (PWA) | ✅ | ✅ |
| Rural/Slow Internet | ✅ (Lite) | ✅ | ✅ |

---

## Support & Troubleshooting

### Telegram Bot Not Responding?
1. Check webhook URL is correct
2. Verify bot token in Firebase config
3. Check Firebase Functions logs

### SMS Not Working?
1. Verify SMS provider API key
2. Check webhook URL is publicly accessible
3. Test with Africa's Talking sandbox

### Language Not Switching?
1. Check device language settings
2. Verify `flutter_localizations` dependency
3. Rebuild app after language change

---

**All three features are now ready for deployment!** 🚀
