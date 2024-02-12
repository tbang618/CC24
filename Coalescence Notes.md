# Coalescent Computing

## Introduction
> The idea of coalescent computing is introduced. The basis is the idea of cyber foraging, and is becoming a possibility with technological trends in distributed systems.

**Coalescent Computing** is the "dynamic" coalescence of disaggregated computational resources to client machines.  The vision: "cloudlets" can transparently augment a user's device to have more computational resources based on environmental factors.  

The basis for this vision is **Cyber Foraging**: user application components are offloaded to remote machines discovered in the local environment, with two points:
- offloading happens at the level of virtual machines
- the application and systems software needs to know about the local/remote distinction

One goal of distributed systems is to provide the illusion of a single system image.  With current trends, this now seems feasible within the datacenter.  Two examples in this direction are **LegoOS** and **GiantVM**.

## Coalescent Computing
> A more detailed description of coalescent computing, starting with user scenarios and then the properties of a coalescent computing system: transparency, performance, resilience, customizability, and privacy/security.

> **Coalescence Principle**: Users' devices experience a coalescence of resources proportional to proximity as users move through the physical environment.

*Figure 1* visualizes how this principle applies across space, as a user moves through an environment.  The hosting machines, where user devices get their computational resources, may be stationary or less constrained, like in **Femtocloud**.  

An example of a scenario:
1. Application on user device causes a spike in CPU usage.
2. OS bids for leasable CPUs (Coalescent Computing)
3. If none are available:
	1. Borrow resources from the traditional cloud...
	2. ...or use local resources (CPU on device)
4. When the user leaves the environment, any obtained resources are relinquished

The OS provisioning of resources is similar to **computational sprinting** and **JIT-provisioned Cyber Foraging**, but at the level of disaggregated cores and devices.

### Transparency

> From "Distributed Systems" on Wikipedia: *"This seamless integration of individual nodes into a global system is referred to as **transparency**, or single system image; describing the illusion provided to users of the global system's appearance as a single computational entity."*

The system should be able to *transparently* (i.e. dynamically provide illusion of a single system) acquire and relinquish resources from the environment.

A user device does not (should not) necessarily get sole ownership of a remote resource; the remote system should be able to lend out resources to other users.  A challenge is how the remote system optimally lends out these resources among competing users and diverse applications.  Solutions from a centralized scheduling mechanism (like in a datacenter) will be ineffective here.  A possibility is some kind of distributed coalescent scheduler.

The user should be able to monitor the coalesced resources on their devices as usual (e.g. viewing `/proc/cpuinfo`).  The remote resources should be treated by the OS like a local resource, but challenges arise from the dynamism of the system (see **NUMA-awareness**).

### Performance
A system implementing coalescent computing should not perceptibly disturb response times from the user's point-of-view.  

As such, some applications do not want to use remote resources due to the latency penalty, and the system needs to guide such applications.  Other applications should work well with such a system.

### Resilience
The vision entails using wireless connections, so the coalescent system needs to manage the problems that come with wireless technologies.

### Customizability
There are scenarios where the user may want to adjust the threshold of resources they lend out or acquire.

### Privacy and Security
Some issues:
- trust in remote system e.g. user data might run on untrusted software
- malicious actors e.g someone lends out their resources to collect sensitive data from other users
- DOS attacks

This is a problem that plagues decentralized volunteer computing systems.

## Challenges
The challenges of actually implementing a coalescent computing system.

### Hardware
The major challenge is wireless technology performance.  The latency of current technologies are reviewed: **coherence** will not be achievable, but support for Coalescent Computing is still possible.

...
### Software
On what a Coalescent OS should provide.  While an OS like LegoOS, it does not focus on the wireless capabilities wanting for Coalescent Computing.

#### Performance
For privacy the user's code/data should be in an isolated environment.  For performance, this environment needs to be very lightweight with a fast startup.  Some details:
- CPU virtualization should be something like the "plug-and-play" PCI of Barrelfish/DC
- To overcome limitations in network latency, messaging passing should be used instead of shared memory
- Skewed access distribution might help for memory performance
- Quality-of-Service (QoS) policies for users
- "Best effort coalescence": fallback to local resources if network capabilities are lacking
- ...

#### Heterogeneity
The dissaggregated hardware may all be different, and the OS needs to account for this.

(It looks like this is where WASM comes in to play)

#### Resource Discovery
User devices need to look for resources in the local environment.  Something like UPnP might work.

#### Programming Model
I recommend reading this section in full.

#### Adaptation and Fault Tolerance
To adapt to changing network conditions, the OS might employ replication.  When a user moves out of range of the system, the OS needs to react appropriately to the running application.

## Conclusion
...