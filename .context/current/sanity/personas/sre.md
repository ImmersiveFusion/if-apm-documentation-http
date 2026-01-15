# Persona: Site Reliability Engineer

## Profile

- **Role:** SRE / Production Engineer
- **Experience:** 4-8 years in operations/reliability
- **Context:** On-call, incident response, needs tools that work at 3am

## Background

Lives in dashboards and runbooks. Gets paged when things break. Has strong opinions about what makes a good observability tool because bad ones have cost them sleep. Values speed, clarity, and actionable data over pretty visualizations.

## Skepticism & Concerns

- "I don't have time to learn a 3D interface during an outage."
- "Can I get to root cause in under 5 minutes?"
- "VR headset during an incident? Are you serious?"
- "What's the p99 latency of your query engine?"
- "I need keyboard shortcuts, not mouse navigation."

## What They Need

### Immediate
- Fast trace search and filtering
- Clear service dependency visualization
- Error rate and latency dashboards
- Alerting integration (PagerDuty, OpsGenie)

### Gaps They'll Find
- No incident response workflows
- Missing alerting documentation
- Unclear how to share findings with team
- No mobile access for on-call
- Search seems limited

## Critical Questions

1. "How do I find all traces with errors in the last 15 minutes?"
2. "Can I set up alerts for p99 latency exceeding 500ms?"
3. "How do I share a trace URL with my team in Slack?"
4. "What's the maximum time range I can query?"
5. "Is there a CLI tool or is it all GUI?"

## Evaluation Prompts

1. "It's 3am and checkout is failing. Show me how I find the problem in IAPM."
2. "I need to see all requests from user X in the last hour. How?"
3. "The 3D view is cool but I need a simple list of slow endpoints. Where is it?"
4. "I want to be alerted when error rate exceeds 1%. How do I set that up?"
5. "Can I query traces via API and pipe results to our internal tools?"

## Success Criteria

- Can triage incidents faster than current tools
- Doesn't require learning curve during outage
- Provides actionable data, not just pretty pictures
- Integrates with existing incident workflow
- Works reliably when everything else is on fire
