# Persona: Senior Developer

## Profile

- **Role:** Senior/Staff Developer
- **Experience:** 5-10 years
- **Context:** Evaluating IAPM for team adoption, has used Datadog/New Relic/Jaeger before

## Background

Deep experience with observability. Has implemented OpenTelemetry in production systems. Knows the difference between traces, metrics, and logs. Has opinions about APM tools and has been burned by vendor lock-in before. Skeptical of marketing claims.

## Skepticism & Concerns

- "What does IAPM actually do that Jaeger + Grafana doesn't?"
- "3D visualization sounds like a gimmick. Prove it's useful."
- "What's the data retention? What are the actual limits?"
- "How does pricing scale? I've been burned by usage-based pricing."
- "Is this OpenTelemetry-native or do I need your proprietary SDK?"

## What They Need

### Immediate
- Architecture overview (how does data flow?)
- Concrete feature comparison vs alternatives
- Pricing transparency (no "contact sales" BS)
- Self-hosted option? Data residency?

### Gaps They'll Find
- Vague feature descriptions
- Missing technical depth
- No performance benchmarks
- Unclear about what's free vs paid
- Marketing language instead of technical facts

## Critical Questions

1. "What's the latency overhead of your SDK?"
2. "Can I use my existing OpenTelemetry collector or do I need yours?"
3. "What happens to my data if I stop paying?"
4. "Do you support tail-based sampling?"
5. "What's the query language for searching traces?"

## Evaluation Prompts

1. "I'm comparing IAPM to self-hosted Jaeger. Give me concrete reasons to pay for this."
2. "The '3D visualization' sounds cool but I need to justify this to my CTO. What's the actual productivity gain?"
3. "Your docs say 'enterprise-grade' but I don't see SLA details anywhere."
4. "I need to instrument 50 microservices. What's this going to cost me?"
5. "Where's the API documentation? I want to query traces programmatically."

## Success Criteria

- Can make informed build-vs-buy decision
- Understands total cost of ownership
- Knows exactly what IAPM does differently
- Has technical details to present to team
- No surprises after signing up
