# Customer Journey Sanity Check

**Date:** 2026-01-14
**Personas Evaluated:** customer-trial, customer-new, customer-churning
**Evaluator:** Documentation review against persona requirements

---

## Executive Summary

The documentation provides a **solid foundation for trial users** with clear getting-started paths and sandbox access. However, significant gaps exist for **new paying customers** (team management, ROI demonstration) and **at-risk customers** (cancellation, data export, re-engagement). The documentation leans heavily toward acquisition but lacks retention-focused content.

---

## Trial User (customer-trial)

### What Works

| Requirement | Documentation Status | Evidence |
|-------------|---------------------|----------|
| Clear "start here" path | :material-check: Good | [Getting-Started/index.md](../../../docs/Getting-Started/index.md) has clear flow diagram |
| Sample data to explore | :material-check: Good | [Sandbox](../../../docs/Setup/Sandbox/index.md) with Chaos Simulator |
| Time estimates | :material-check: Good | "Sign up and configure your account - 2 min", "Instrument App - 5-15 min" |
| Help channels | :material-check: Good | Live chat, Discord, YouTube, email clearly listed |

### Critical Gaps

| Gap | Persona Question | Impact |
|-----|-----------------|--------|
| **No trial length info** | "My trial ends in 3 days. Can I extend it?" | User doesn't know trial terms |
| **No feature comparison** | "What features am I missing on the free trial?" | Can't evaluate paid value |
| **No pricing page in docs** | "Show me why this is worth $X/month" | Redirects to external site |
| **No data retention policy** | "If I don't subscribe, what happens to my data?" | Uncertainty about commitment |
| **Dashboard empty state** | "I got the SDK installed but the dashboard is empty" | No troubleshooting for this |

### Unanswered Questions

1. "I have 30 minutes. What's the fastest way to see if this works for me?"
   - **Partial:** Sandbox helps, but no "30-minute evaluation guide"

2. "Can I see a demo with real data before I instrument my app?"
   - **Yes:** Chaos Simulator provides this

3. "My trial ends in 3 days. Can I extend it?"
   - **Missing:** No trial extension information anywhere

4. "If I don't subscribe, what happens to the data I sent?"
   - **Missing:** Data retention policy for non-subscribers not documented

### Red Flags Identified

- External pricing link (`immersivefusion.com/pricing`) instead of in-docs pricing transparency
- No mention of trial duration or terms in documentation
- "Contact sales" for enterprise plans (typical, but noted)

---

## New Paying Customer (customer-new)

### What Works

| Requirement | Documentation Status | Evidence |
|-------------|---------------------|----------|
| Login instructions | :material-check: Good | Multiple auth options documented |
| Account structure | :material-check: Good | Tenant/Environment/Grid hierarchy explained |
| API key management | :material-check: Good | Clear generation and rotation instructions |

### Critical Gaps

| Gap | Persona Question | Impact |
|-----|-----------------|--------|
| **No team invitation guide** | "How do I add my 3 teammates to the account?" | Team onboarding blocked |
| **No permissions documentation** | "assign roles, manage permissions" mentioned but not explained | Security/access confusion |
| **No production vs staging guide** | "What's the recommended setup for production vs staging?" | Architecture guidance missing |
| **No alert setup guide** | "How do I set up alerts so I actually use this daily?" | Daily engagement missing |
| **No ROI metrics** | "Our usage is higher than expected. How do I optimize costs?" | Cost justification impossible |
| **No plan comparison** | "I'm on the Starter plan. What am I missing?" | Upgrade path unclear |

### Unanswered Questions

1. "How do I add my 3 teammates to the account?"
   - **Missing:** Team Management mentioned in [IAPM-Web/Guides](../../../docs/Products/IAPM-Web/Guides/index.md) table but no actual guide

2. "What's the recommended setup for production vs staging?"
   - **Missing:** Best practices exist but no environment separation guidance

3. "I'm on the Starter plan. What am I missing?"
   - **Missing:** No plan feature matrix in documentation

4. "How do I set up alerts so I actually use this daily?"
   - **Missing:** Alerts mentioned in features but no setup guide

5. "Can I get a call with someone to optimize our setup?"
   - **Partial:** Contact page exists, but no "optimization consultation" offering documented

### Red Flags Identified

- "Team Management" listed as feature but no documentation exists
- Billing section exists but no guide on understanding/optimizing costs
- No onboarding checklist for new customers
- No "first 30 days" success guide

---

## Churning Customer (customer-churning)

### What Works

| Requirement | Documentation Status | Evidence |
|-------------|---------------------|----------|
| Contact channels | :material-check: Good | Multiple support options available |
| Release notes | :material-check: Good | Both IAPM Web and Desktop have release notes |

### Critical Gaps

| Gap | Persona Question | Impact |
|-----|-----------------|--------|
| **No "what's new" summary** | "What's new since I last logged in 2 months ago?" | Re-engagement impossible |
| **No downgrade path** | "Can I downgrade to a cheaper plan instead of canceling?" | All-or-nothing choice |
| **No data export guide** | "How do I export our historical data before leaving?" | Data lock-in perception |
| **No cancellation documentation** | "Will you delete our data immediately or is there a grace period?" | Fear of losing data |
| **No reactivation info** | "If I cancel now, can I reactivate later with my data intact?" | Prevents temporary churn |
| **No ROI calculator** | "I can't justify the cost for what we're getting" | No value demonstration |
| **No competitor comparison** | "We went back to Datadog because it's what we know" | No differentiation content |

### Unanswered Questions

1. "What's new since I last logged in 2 months ago?"
   - **Partial:** Release notes exist but no digest/summary view

2. "Can I downgrade to a cheaper plan instead of canceling?"
   - **Missing:** No plan change documentation

3. "How do I export our historical data before leaving?"
   - **Missing:** Data export mentioned in Data Security ("Exportable - Available for export in standard formats") but no guide

4. "Will you delete our data immediately or is there a grace period?"
   - **Missing:** No data retention after cancellation policy

5. "If I cancel now, can I reactivate later with my data intact?"
   - **Missing:** No reactivation policy documented

### Red Flags Identified

- Zero documentation about leaving gracefully
- No win-back or re-engagement content
- Data export mentioned but not documented
- No troubleshooting for "team isn't using this" scenario
- No competitive positioning content

---

## Summary: Documentation Gaps by Priority

### P0 - Critical (Affects Revenue)

| Gap | Personas Affected | Recommendation |
|-----|-------------------|----------------|
| Team management guide | customer-new | Document invitation, roles, permissions |
| Plan comparison matrix | customer-trial, customer-new | Show feature differences between plans |
| Data export guide | customer-churning | Document export formats and process |
| Cancellation/retention policy | customer-trial, customer-churning | Document what happens to data |

### P1 - High (Affects Adoption)

| Gap | Personas Affected | Recommendation |
|-----|-------------------|----------------|
| Alert setup guide | customer-new | Enable daily engagement |
| Production deployment guide | customer-new | Help scale beyond trial |
| Trial terms documentation | customer-trial | Set expectations |
| Pricing in docs | customer-trial | Remove friction |

### P2 - Medium (Affects Satisfaction)

| Gap | Personas Affected | Recommendation |
|-----|-------------------|----------------|
| "What's new" digest | customer-churning | Re-engage dormant users |
| ROI metrics/calculator | customer-new, customer-churning | Justify continued investment |
| Plan downgrade path | customer-churning | Reduce churn to cheaper tier |
| Competitive comparison | customer-churning | Reinforce value proposition |

### P3 - Low (Nice to Have)

| Gap | Personas Affected | Recommendation |
|-----|-------------------|----------------|
| 30-minute evaluation guide | customer-trial | Guided quick evaluation |
| First 30 days checklist | customer-new | Structured onboarding |
| Reactivation policy | customer-churning | Reduce permanent churn |

---

## Evaluation Criteria Results

| Criteria | Trial | New | Churning |
|----------|-------|-----|----------|
| **Completeness** | 70% | 40% | 20% |
| **Clarity** | 85% | 75% | N/A |
| **Honesty** | 75% | 70% | 50% |
| **Findability** | 80% | 60% | 30% |
| **Trust** | 70% | 60% | 40% |

---

## Next Steps

1. **Immediate:** Document team management (invitations, roles, permissions)
2. **Short-term:** Add plan comparison and trial terms
3. **Medium-term:** Create data export and cancellation documentation
4. **Ongoing:** Add "what's new" summaries to release notes