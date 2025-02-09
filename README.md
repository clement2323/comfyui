# ComfyUI Kubernetes Deployment

A production-ready Kubernetes deployment configuration for ComfyUI, an advanced node-based UI for Stable Diffusion.

## Overview

This repository contains Kubernetes manifests and configuration files to deploy ComfyUI in a scalable and maintainable way on Kubernetes clusters.

## Features

- 🚀 Production-ready Kubernetes deployment
- 💾 Persistent storage configuration
- 🔧 Resource management

## Prerequisites

- Kubernetes cluster 
- kubectl configured to communicate with your cluster
- Storage class available in your cluster

## Quick Start

git clone https://github.com/clement2323/comfyui.git  
cd comfyui  
kubectl apply -f .

![demo](comfyui.png)
