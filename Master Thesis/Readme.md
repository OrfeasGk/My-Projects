Substituting MLPs in Transformers with Kolmogorov-Arnold Networks
This repository contains the official implementation and research findings for the Master's thesis: "Substituting MLPs in Transformers with Kolmogorov-Arnold Networks: A New Direction in Deep Learning".

📌 Overview
This research explores the viability of replacing traditional Multi-layer Perceptrons (MLPs) with Kolmogorov-Arnold Networks (KANs) within state-of-the-art Transformer architectures. While MLPs rely on the Universal Approximation Theorem and fixed activation functions on nodes, KANs leverage the Kolmogorov-Arnold Representation Theorem, placing learnable activation functions on edges (weights).

Key Contributions:

-Architectural Innovation: Integration of Spline-based KANs and Group-Rational KANs (GR-KANs) into popular Transformer models including ViT, Swin, EvA, and BERT.
-Performance Benchmarking: Comparative analysis across diverse datasets (Skyview, Food-101, and Suicide Detection).
-Explainability: Visual analysis of learned splines and rational functions to open the "black box" of deep learning.
-Efficiency Analysis: Evaluation of the trade-offs between parameter efficiency and computational overhead (training time vs. accuracy).

🏗️ Models & Architectures
The project implements several Transformer variants with KAN-based modifications:
1.ViT: Vision Transformer.
2.Swin: Swin Transformer.
3.EvA: Scaling experiments with the EvA foundation model.
4.BERT: Bidirectional encoder representations for text classification.

🛠️ Implementation Details
The core of this repository is built using PyTorch and PyTorch Lightning.
Group-Rational KAN (GR-KAN)
A significant portion of the work focuses on GR-KAN, which addresses the high parameter count of original KANs by grouping edges and using rational functions of the form:
$$F(x) = \frac{P(x)}{1 + |Q(x)|}$$
This reduces the parameter count to a level comparable to standard MLPs while maintaining the flexibility of learnable activations.

Code Structure
-RationalFunction: Implementation of the rational base functions using Horner's method for efficiency.
-KAT_Group: The main GR-KAN layer module designed as a drop-in replacement for nn.Linear in MLPs.
-b_splines: Computation of B-spline bases for standard KAN layers.


📊 Results Summary
The study concludes that while KANs are theoretically elegant, they are not yet a "drop-in" replacement for MLPs due to:
-Performance: KANs can match or slightly exceed MLP performance in specific configurations (e.g., as classification heads).
-Computational Cost: KAN-based models can be 10 to 100 times slower to train than their MLP counterparts.
-Stability: Replacing internal MLP blocks in large-scale models often introduced training instability.
