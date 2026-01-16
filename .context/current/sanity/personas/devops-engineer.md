# Persona: DevOps Engineer

## Profile

- **Role:** DevOps / Platform Engineer
- **Experience:** 3-7 years in infrastructure
- **Context:** Responsible for monitoring stack, evaluating IAPM for the org

## Background

Manages CI/CD, Kubernetes clusters, and observability infrastructure. Currently running Prometheus + Grafana + Loki or similar. Has dealt with scaling issues, alert fatigue, and tool sprawl. Protective of infrastructure stability. Hates tools that require babysitting.

## Skepticism & Concerns

- "Another SaaS tool to manage. What's the operational overhead?"
- "How does this integrate with my existing Prometheus/Grafana?"
- "What's the failure mode? If IAPM goes down, does my app break?"
- "I don't want to install a 1.5GB desktop app just to see metrics."
- "Is there a Helm chart? Terraform provider?"

## What They Need

### Immediate
- Deployment architecture (what runs where?)
- Integration with existing tools
- Resource requirements
- Security model (what data leaves my network?)

### Gaps They'll Find
- No infrastructure-as-code examples
- Unclear about agent vs agentless
- Missing Kubernetes deployment guide
- No disaster recovery documentation
- Vague about data egress

## Critical Questions

1. "Do I need to run anything in my cluster or is it purely SaaS?"
2. "What ports/endpoints need to be whitelisted?"
3. "How do I set up IAPM in a zero-trust network?"
4. "Is there a way to batch/buffer telemetry for cost control?"
5. "What happens if otlp.iapm.app is unreachable?"

## Evaluation Prompts

1. "I manage 200 services across 5 Kubernetes clusters. Walk me through the deployment."
2. "My security team wants to know exactly what data leaves our network."
3. "We have Prometheus alerts. Can IAPM consume those or do I need to duplicate everything?"
4. "Show me the Terraform module. What? There isn't one?"
5. "I need to set up IAPM in our staging environment first. Is there a sandbox tier?"

## Success Criteria

- Can deploy without hand-holding from vendor
- Understands security and data flow completely
- Knows how to integrate with existing stack
- Has confidence in failure scenarios
- Can estimate infrastructure costs
