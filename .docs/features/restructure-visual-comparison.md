# Visual Comparison: Current vs. Proposed Structure (IAPM vs. IAPM Web)

## Current Structure (What Users See Today)

```
📚 Immersive Fusion Docs
│
├── 🏁 Getting Started
│   ├── Overview
│   └── Step by Step (Entra ID / Local & Social)
│
├── ⚙️ Setup
│   ├── Sandbox
│   ├── Offers
│   ├── Discounts
│   ├── Login
│   ├── Account
│   ├── API Key
│   └── Custom Application (Instrumentation)
│
├── 📊 Analysis and Visualization          ⚠️ AMBIGUOUS
│   ├── 3D and VR                          (Equal weight)
│   │   ├── Installation
│   │   ├── Navigation
│   │   ├── Preferences
│   │   ├── VR Integrations
│   │   └── Release Notes
│   │
│   └── Web and Mobile                     (Equal weight)
│       ├── Getting Started
│       ├── Supported Configurations
│       └── Release Notes
│
├── 🤝 Partner
└── 📖 Resources
```

### Problems with Current Structure:
- ❌ "Analysis and Visualization" doesn't clarify **purpose** (conventional APM vs. immersive investigation)
- ❌ 3D/VR and Web/Mobile appear as **equal alternatives** when they serve different needs
- ❌ **AI Copilot** isn't prominent (buried in release notes)
- ❌ Users don't know **which tool to use when**
- ❌ Revolutionary **IAPM experience** isn't positioned as the differentiator
- ❌ **IAPM Web's conventional APM** capabilities aren't documented properly

---

## Proposed Structure (Clear Purpose Distinction)

```
📚 Immersive Fusion Docs
│
├── 🏁 Getting Started
│   ├── Overview
│   ├── 🔀 Choose Your Path                ✨ NEW
│   │   ├── IAPM Web (Conventional APM)
│   │   └── IAPM Client (Immersive Experience)
│   └── Authentication
│
├── 🌟 IAPM             ✨ PRIMARY FOCUS
│   ├── Overview                           ("Enter the World of Your Application")
│   │
│   ├── 🤖 AI Copilot                      ✨ FIRST (Most Innovative)
│   │   ├── What is AI Copilot?
│   │   ├── Getting Started
│   │   ├── Chat Interface
│   │   ├── Voice Interaction
│   │   ├── Use Cases
│   │   ├── Best Practices
│   │   └── FAQ
│   │
│   ├── 🥽 3D/VR Environment
│   │   ├── Installation
│   │   ├── Navigation & Controls
│   │   ├── Visualization Features
│   │   ├── VR Headset Integration
│   │   └── Preferences
│   │
│   └── 🎯 Advanced Features
│       ├── Hall of Supporters
│       └── Release Notes
│
├── 💻 IAPM Web                         ✨ CONVENTIONAL APM + MANAGEMENT
│   ├── Overview                           ("Full-featured APM in your browser")
│   ├── Getting Started
│   │
│   ├── 📊 APM Features                    ✨ NEW: Document conventional APM
│   │   ├── Dashboards & Metrics
│   │   ├── Traces & Logs
│   │   ├── Monitoring & Alerts
│   │   └── Analysis Tools
│   │
│   ├── ⚙️ Management                      ✨ NEW: Account/subscription management
│   │   ├── Account Configuration
│   │   ├── Subscription Management
│   │   └── User Administration
│   │
│   ├── Supported Browsers
│   └── Release Notes
│
├── 🔧 Configuration & Management          ✨ RENAMED (was "Setup")
│   ├── Overview                           (Backend configuration)
│   ├── Sandbox
│   ├── Offers & Discounts
│   ├── Account Setup
│   ├── API Key Management
│   └── Instrumentation
│
├── 🤝 Partner
└── 📖 Resources
```

### Benefits of Proposed Structure:
- ✅ **Clear branding**: IAPM vs. IAPM Web (matches product names)
- ✅ **Purpose distinction**: IAPM Web (conventional APM + management) vs. IAPM (immersive investigation)
- ✅ **AI Copilot prominent**: First feature under IAPM
- ✅ **Prioritized navigation**: IAPM appears before IAPM Web
- ✅ **Portal APM documented**: Conventional APM features properly documented
- ✅ **User guidance**: "Choose Your Path" helps users pick the right tool
- ✅ **Value proposition**: Revolutionary IAPM is clearly the differentiator

---

## User Journey Comparison

### Current User Journey (Confused)
```
User arrives → "Analysis and Visualization" →
    "3D/VR or Web/Mobile?" →
        "What's the difference?" →
            Unclear when to use which
            Portal APM features undocumented
```

### Proposed User Journey (Clear)
```
User arrives → "Choose Your Path" →

    Path A: "I need conventional APM and management"
        → IAPM Web (Web/Mobile)
        → Full APM features + account management

    Path B: "I want immersive investigation with AI"
        → IAPM Client (3D/VR)
        → Revolutionary AI Copilot + 3D visualization
```

---

## Positioning Statements

### IAPM
**Folder:** `docs/IAPM/`
**Tagline:** "Enter the World of Your Application"

**When to use:**
- 🔍 Deep troubleshooting and investigation
- 🧩 Understanding complex distributed systems
- 🤖 AI-assisted analysis and insights
- 🎯 Pattern recognition in 3D/VR space
- 🥽 Immersive VR exploration
- 💡 Innovative approach to APM

**Key features:**
- 🤖 AI Copilot (chat & voice)
- 🌐 3D topology visualization
- 🥽 VR headset support (HTC Vive, Meta Quest)
- 🎮 Unity 6 engine
- 💻 .NET 9.0 desktop client
- 🗣️ Natural language queries
- 🏛️ Hall of Supporters

**Technology:**
- Windows (primary), Mac (experimental), Linux

---

### IAPM Web
**Folder:** `docs/IAPM-Web/`
**Tagline:** "Full-featured APM in your browser"

**When to use:**
- 📊 Conventional APM monitoring
- 📈 Dashboard and metrics analysis
- 🔍 Distributed tracing
- 📝 Log aggregation and search
- 🚨 Alerts and monitoring
- ⚙️ Account and subscription management
- 📱 Mobile access on the go
- 🌐 No installation needed

**Key features:**
- **APM Capabilities:**
  - 📊 Real-time dashboards and metrics
  - 🔗 Distributed tracing
  - 📝 Log aggregation and analysis
  - 🚨 Monitoring and alerting
  - 🔍 Investigation and analysis tools
- **Management:**
  - 👥 Account and subscription management
  - 🔐 User administration
  - ⚙️ Configuration UI
- **Accessibility:**
  - 🌐 Browser-based (no installation)
  - 📱 Cross-platform (desktop, mobile)
  - 🔗 azure.iapm.app (Entra ID)
  - 🔗 my.iapm.app (Local/Social)

---

## Navigation Priority

### Old Order
1. Getting Started
2. Setup
3. **Analysis and Visualization** (3D/VR and Web/Mobile equally weighted)
4. Partner
5. Resources

### New Order ✨
1. Getting Started
2. **IAPM** ⭐ (PRIMARY - Revolutionary immersive client)
3. **IAPM Web** (Conventional APM + Management)
4. Configuration & Management (Backend setup)
5. Partner
6. Resources

---

## URL Strategy

### Short Marketing URLs
```
docs.immersivefusion.com/iapm         → IAPM
docs.immersivefusion.com/ai           → AI Copilot
docs.immersivefusion.com/copilot      → AI Copilot
docs.immersivefusion.com/portal       → IAPM Web
docs.immersivefusion.com/immersive    → IAPM
docs.immersivefusion.com/3d           → IAPM
docs.immersivefusion.com/vr           → IAPM
docs.immersivefusion.com/web          → IAPM Web
```

### Redirects Preserve Old URLs
All existing URLs redirect to new locations - **no broken links**.

**Example:**
- Old: `/Analysis-and-Visualization/3D-and-VR/` → New: `/IAPM/`
- Old: `/Analysis-and-Visualization/Web-and-Mobile/` → New: `/IAPM-Web/`
- Old: `/Setup/` → New: `/Configuration-and-Management/`

---

## Key Decisions Needed

1. **✅ RESOLVED: Naming**
   - IAPM (for immersive client) - CONFIRMED
   - IAPM Web (for management/conventional APM) - CONFIRMED

2. **AI Copilot placement:**
   - First (most innovative) or after 3D/VR basics (progressive learning)?
   - **Recommendation:** First - it's the newest, most differentiating feature

3. **✅ RESOLVED: Portal capabilities**
   - IAPM Web has conventional APM features - CONFIRMED
   - Need to document: dashboards, metrics, traces, logs, alerts, analysis tools

4. **IAPM Web content needed:**
   - What specific APM features exist?
   - Screenshots of dashboards, trace views, log aggregation?
   - What management capabilities exist (account, subscription, user admin)?

5. **Migration timing:**
   - Big bang (all at once) or phased approach?
   - **Recommendation:** Phased - 1) Create structure, 2) Migrate content, 3) Add new Portal APM docs

6. **Communication:**
   - How to announce this to existing users?
   - Update blog, social media, newsletters?
   - In-app notifications?

---

## Timeline Recommendation

**Week 1:** Planning & stakeholder alignment
**Week 2-3:** Content creation & migration
**Week 4:** Review, testing, deployment

**Total: 4 weeks** (with buffer for iterations)

---

## Success Definition

Users should be able to answer:
1. ✅ "When should I use the Portal?" → Quick checks, management
2. ✅ "When should I use Immersive Experience?" → Deep investigation, AI help
3. ✅ "What is AI Copilot?" → Clearly documented, easy to find
4. ✅ "How do I get started?" → Clear path based on their needs

---

**Related Plans:**
- [Detailed Restructure Plan](restructure-portal-vs-immersive.md)
- [AI Copilot Documentation](ai-copilot-alignment.md)
