#!/usr/bin/env bash

set -e

REPO_NAME="web4-manifesto"

echo "Initializing $REPO_NAME repository structure..."

# Helper: create file only if it doesn't exist
create_file() {
  local path="$1"
  local content="$2"

  if [ ! -f "$path" ]; then
    echo "Creating $path"
    mkdir -p "$(dirname "$path")"
    cat <<EOF > "$path"
$content
EOF
  else
    echo "Skipping existing file $path"
  fi
}

# Root files
create_file "$REPO_NAME/README.md" \
"# Web 4.0 Manifesto

This repository contains an independent, living specification exploring **Web 4.0** as an agentic, intent-based evolution of the web.

It is not owned by any company, product, or platform.
Any implementation claiming alignment with these ideas must stand on its own merits.

## Contents
- MANIFESTO.md — philosophical framing
- APPENDIX.md — technical primitives
- spec/ — evolving reference specification
- governance/ — contribution and governance model

This document is intentionally early, minimal, and open to iteration.
"

create_file "$REPO_NAME/MANIFESTO.md" \
"# The Web 4.0 Manifesto

Web 4.0 marks a phase change in the evolution of the web.

Where previous eras focused on documents, platforms, or trust networks,
Web 4.0 centers on **agents**, **intent**, and **coordination**.

Humans are no longer users of the system.
They are first-class agents within it.
"

create_file "$REPO_NAME/APPENDIX.md" \
"# Appendix: Web 4.0 OS Primitives

This appendix defines the minimal primitives required to build agentic,
intent-oriented systems consistent with Web 4.0 principles.

These are not products or APIs.
They are coordination primitives.
"

create_file "$REPO_NAME/GLOSSARY.md" \
"# Glossary

**Agent**  
An executable unit of intent operating under scoped authority.

**Intent**  
A goal-oriented request including constraints and tolerance for uncertainty.

**Counter-Intent**  
A graded response proposing resolution of an intent.

**Blueprint**  
A natural-language executable specification defining agent behavior.

**Scope**  
An explicit authority boundary governing actions and delegation.
"

create_file "$REPO_NAME/CHANGELOG.md" \
"# Changelog

## v0.1.0
- Initial public draft
"

create_file "$REPO_NAME/LICENSE" \
"Creative Commons Attribution 4.0 International (CC BY 4.0)

You are free to share and adapt this material for any purpose,
provided appropriate credit is given.
"

# Spec structure
create_file "$REPO_NAME/spec/README.md" \
"# Web 4.0 Specification

This directory contains the evolving technical specification
for Web 4.0 concepts and primitives.
"

# Core primitives
create_file "$REPO_NAME/spec/core/agent.md" \
"# Agent

An agent is an executable unit of intent operating under scoped authority.
"

create_file "$REPO_NAME/spec/core/intent.md" \
"# Intent

Intent is the fundamental unit of computation in Web 4.0 systems.
"

create_file "$REPO_NAME/spec/core/blueprint.md" \
"# Blueprint

A blueprint is a natural-language executable specification for an agent.
"

create_file "$REPO_NAME/spec/core/scope.md" \
"# Scope

Scope defines authority boundaries for agents and tools.
"

create_file "$REPO_NAME/spec/core/orchestration.md" \
"# Orchestration

Orchestration is the dynamic routing and coordination of intents.
"

create_file "$REPO_NAME/spec/core/memory.md" \
"# Memory

Memory provides scoped, persistent context for agents.
"

# Protocols
create_file "$REPO_NAME/spec/protocols/intent-routing.md" \
"# Intent Routing

Intent routing describes how intents are dispatched to agents.
"

create_file "$REPO_NAME/spec/protocols/counter-intent.md" \
"# Counter-Intent

A counter-intent represents a graded response to an intent.
"

create_file "$REPO_NAME/spec/protocols/session-model.md" \
"# Session Model

Sessions provide shared, bounded coordination contexts.
"

# Governance spec
create_file "$REPO_NAME/spec/governance/meta-agents.md" \
"# Meta-Agents

Meta-agents regulate, audit, and modify other agents.
"

create_file "$REPO_NAME/spec/governance/alignment.md" \
"# Alignment

Alignment is a continuous process of intent reconciliation.
"

create_file "$REPO_NAME/spec/governance/failure-modes.md" \
"# Failure Modes

Failure is a first-class concept in Web 4.0 systems.
"

# Diagrams
create_file "$REPO_NAME/spec/diagrams/web4-os.mmd" \
"graph TD
  Intent --> Orchestrator
  Orchestrator --> Agent
  Agent --> Tool
  Tool --> CounterIntent
"

create_file "$REPO_NAME/spec/diagrams/intent-loop.mmd" \
"graph LR
  Human --> Intent
  Intent --> Agent
  Agent --> CounterIntent
  CounterIntent --> Human
"

# Repo governance
create_file "$REPO_NAME/governance/CONTRIBUTING.md" \
"# Contributing

Contributions are welcome via issues and pull requests.

All contributions should aim for clarity, neutrality, and technical rigor.
"

create_file "$REPO_NAME/governance/GOVERNANCE.md" \
"# Governance

This project is community-oriented and vendor-neutral.

No single individual or organization controls the specification.
"

create_file "$REPO_NAME/governance/CODE_OF_CONDUCT.md" \
"# Code of Conduct

This project follows a standard code of conduct focused on
respectful and constructive collaboration.
"

# Roadmap
create_file "$REPO_NAME/roadmap/00-vision.md" \
"# Vision

Articulate the long-term conceptual goals of Web 4.0.
"

create_file "$REPO_NAME/roadmap/01-incubation.md" \
"# Incubation

Community discussion, refinement, and experimentation.
"

create_file "$REPO_NAME/roadmap/02-standardization.md" \
"# Standardization

Engagement with standards bodies and formalization.
"

echo "✅ $REPO_NAME initialized successfully."
