---
title: "Resource Transforms"
date: 2024-07-16
meta_desc: Announcing a new Transform system with support for transforming child resources of packaged components.
meta_image: meta.png
authors:
    - fraser-waters
    - justin-vanpatten
tags:
    - features
---

Pulumi has supported a [Transformations](/docs/concepts/options/transformations) system for a number of years now. This has proved to be a powerful and flexible escape hatch for modifying resource properties and options across your entire program. For example, you could use Transformations to [automatically apply tags](/blog/automatically-enforcing-aws-resource-tagging-policies/#automatically-applying-tags) to all taggable resources in your program, including the children of component resources.

However, there is one major limitation with the existing Transformations system: it isn't able to transform the children of _packaged_ component resources, such as those in [awsx](/registry/packages/awsx) and [eks](/registry/packages/eks). This limitation is due to the fact that _packaged_ component resources are created in a separate provider process and Transformations only work with resources created in your program's process.

To address this limitation we're introducing a new system called [Transforms](/docs/concepts/options/transforms), which works with all resources, including packaged component resources and their children. The new Transforms system is intended to fully replace the old Transformations system.

<!--more-->

Using the new Transforms system is similar to the old system, for example:

TODO

Note that there are some behavior differences between the two systems, necessary to make Transforms work across process boundaries. A migration guide [Migrating from Transformations to Transforms](/docs/concepts/options/transformations/#migrating-from-transformations-to-transforms) is available to help transition to the new system.

We're excited to address this limitation, allowing you to transform all resources in your program, including packaged components. If you have any questions or feedback, please don't hesitate to reach out to us on [Slack](https://slack.pulumi.com/).
