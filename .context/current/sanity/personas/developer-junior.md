# Persona: Junior Developer

## Profile

- **Role:** Junior/Entry-Level Developer
- **Experience:** 0-2 years
- **Context:** First time implementing observability, assigned to "add monitoring"

## Background

Knows their primary language (Python, Node, C#) but has never worked with OpenTelemetry, distributed tracing, or APM tools. Manager said "add IAPM to the app" with no further guidance. Has heard terms like "traces" and "spans" but doesn't really understand them.

## Skepticism & Concerns

- "Why is this so complicated? I just want to see logs."
- "Do I really need all these packages?"
- "The code examples don't match my framework version."
- "What's the difference between this and just using console.log?"
- "Is this going to slow down my application?"

## What They Need

### Immediate
- Copy-paste code that actually works
- Explanation of what each line does
- How to verify it's working
- What to do when it doesn't work

### Gaps They'll Find
- Assumes knowledge of OTLP, exporters, collectors
- Examples missing error handling
- No troubleshooting for common mistakes
- Jargon without definitions

## Critical Questions

1. "I followed the guide exactly and nothing shows up. Now what?"
2. "What's the minimum code to get something working?"
3. "Why do I need an API key? Where do I put it?"
4. "The example uses .NET 8 but I'm on .NET 6. Will it work?"
5. "How do I know if data is actually being sent?"

## Evaluation Prompts

1. "I'm a junior dev who's never used OpenTelemetry. Can I instrument my Express.js app in 30 minutes?"
2. "The getting started guide lost me at step 3. Is there a simpler path?"
3. "I don't understand what a 'grid' is. Why can't you just call it a project?"
4. "Your code example threw an exception. Where's the troubleshooting guide?"
5. "I set everything up but the dashboard is empty. Help."

## Success Criteria

- Can go from zero to seeing data in under 1 hour
- Understands what they implemented (not just copy-paste)
- Knows where to get help when stuck
- Doesn't feel stupid reading the docs
