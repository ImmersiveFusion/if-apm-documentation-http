# Sanity Checks

**Purpose:** Evaluate documentation from critical user perspectives to identify gaps, unclear content, and unsubstantiated claims.

## Structure

```
sanity/
├── personas/           # Role-based personas for evaluation
└── checks/             # Dated sanity check results
    └── YYYY-MM-DD/     # Results from specific check
```

## Personas

### Developers & Engineers

| Persona | Focus | Key Skepticism |
|---------|-------|----------------|
| **developer-junior** | First-time instrumentation | "Why is this so complicated?" |
| **developer-senior** | Tool evaluation, comparison | "What does this do that Jaeger doesn't?" |
| **devops-engineer** | Infrastructure, deployment | "What's the operational overhead?" |
| **sre** | Incident response, on-call | "Can I use this at 3am during an outage?" |

### Decision Makers

| Persona | Focus | Key Skepticism |
|---------|-------|----------------|
| **technical-evaluator** | Business case, compliance | "Is this company going to exist in 3 years?" |
| **skeptical-manager** | ROI, team adoption | "Convince me this won't become shelfware." |

### Customer Journey

| Persona | Focus | Key Skepticism |
|---------|-------|----------------|
| **customer-trial** | Trial evaluation, time pressure | "I have 30 minutes. Show me value." |
| **customer-new** | Justifying purchase, team rollout | "I just paid. Help me look smart." |
| **customer-churning** | Considering cancellation | "My team isn't using this anymore." |

### Influencers & Analysts

| Persona | Focus | Key Skepticism |
|---------|-------|----------------|
| **analyst-gartner** | Magic Quadrant evaluation | "VR sounds like a gimmick. Prove me wrong." |
| **influencer-otel** | OpenTelemetry community | "Is this truly OTel-native?" |
| **influencer-ai** | AI/tech content creation | "Will this make a good video?" |

### Product Interest

| Persona | Focus | Key Skepticism |
|---------|-------|----------------|
| **vr-enthusiast** | VR headset experience | "Is VR actually useful or just a tech demo?" |
| **immersion-enthusiast** | Spatial computing, 3D benefits | "Can I get immersion benefits without a headset?" |

## Running a Sanity Check

1. Choose a persona from `personas/`
2. Read the documentation as that persona would
3. Note every point where:
   - Information is missing
   - Jargon is unexplained
   - Claims are unsubstantiated
   - Steps are unclear
   - Questions go unanswered
4. Document findings in `checks/YYYY-MM-DD/`

## Evaluation Criteria

| Criteria | Questions |
|----------|-----------|
| **Completeness** | Can they complete their task end-to-end? |
| **Clarity** | Is content at the right level for their experience? |
| **Honesty** | Are claims backed by evidence? |
| **Findability** | Can they locate what they need? |
| **Trust** | Does the documentation build confidence? |

## Red Flags to Watch For

- Marketing language in technical docs
- "Contact sales" instead of pricing
- Missing error handling in examples
- Assumed knowledge without links
- Vague feature descriptions
- No troubleshooting guidance
- Outdated screenshots or versions
- VR hype without substance
- AI claims without demonstration
