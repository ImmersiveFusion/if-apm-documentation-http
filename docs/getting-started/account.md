# Customer Account

A customer account is a personalized space provided by Immersive Fusion to its customers, where they can subscribe to, join and access various features and services. A customer account typically requires customers to create a profile with their personal information, such as their name, email address, and sometimes billing information. 

![Immersive Fusion Billing Model](img/billingmodel.png)

## Tenant

Accounts can have one or more *tenants*. A tenant represents organizational structure that is meaningful to the customer such the company itself or a department that has monitored or managed resources. 

## Billing Profile

Tenants have an associated *billing profile* that is used to pay for services used. 

## Subscription

A subscription allows aggregated billing for services rendered for the customer.

## Environment

Managed resources for a tenant are organized by *environments*. Environments group different software applications based on their physical location, purpose or deployment designation. For example, applications in separate data centers or stages such as development and production. 

## Grid

Each managed application is a memeber of environment is referred to a *grid*.

# Summary 

Metered billing can provide several benefits for businesses and customers, including fairness and transparency, cost savings, predictable costs, scalability, and flexibility. By providing customers with a pricing model that aligns with their actual usage of a product or service, businesses can increase customer satisfaction and loyalty, while also improving their own efficiency and profitability.

Application's used APM resources are aggregated with the resources used by the other applications or grids in the environment and billed to the billing profile for that tenant subscription. Customer accounts with multiple tenants and associated billing profiles can provide businesses with a flexible and convenient way to manage resources and services for their customers. By allowing customers to pay only for what they use, businesses can build trust and loyalty with their customers, while also ensuring that resources are used efficiently and effectively.