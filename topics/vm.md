<!--
layout: lecture
title: "Virtual Machines"
instructor: Quinlan, James
-->

# Introduction

Virtual Machines (VM), also called _hypervisors_, is software that extend the capabilities of your host machine so that it can run multiple OSs, inside multiple virtual machines, at the same time. It is a simulated computer that can be configured without affecting your host machine. As an example, you can run Windows and Linux on your Mac, run Windows Server 2016 on your Linux server, run Linux on your Windows PC, and so on, all alongside your existing applications. You can install and run as many virtual machines as you like. The only practical limits are disk space and memory.


## 1.1 Why is Virtualization Useful?

* Sandbox
* Running multiple operating systems simultaneously
* Run software that only runs on particular operating systems.  
* Experiment with malicious software.
* Cross-platform sofware development.
* Create testing environments (mirror production)
* Create redundancy and failovers
* Easier software installations - such as _appliances_ (e.g., mail server)
* Testing and disaster recovery - a VM is a _container_ that can be frozen, copied, backed up, and transported. VM's offer a __snapshot__ feature that save state that can be reverted back to.  If something is corrupted, it is easy to revert back to a previous saved state.
* Share resources but independent of each other
* Can use multiple OS.
* Can serve webpages, databases, etc. 
* Place many servers or workstations on a single physical device 
* Reduce power utilization 
* Full use hardware resources. Two VM may use much of the unused resources.   
* Thread isolation - problems on a guest do not effect host.  Great for cybersecurity.
* Infrastructure consolidation - instead of running several physical machines that use hardware resources (translate to electricity), several VM's can be run on one physical machine.  
	- If you don't think electricity is an issue, check out bitcoin mining.


## Disadvantages
*  VM slower than bare metal, thus certain applications can become _unusable_ on a VM.  
*  Managing virtual machines can be complicated
*  "Single Point of Failure" - if host fails, so does all guests


## Useful features

- **Isolation**: hypervisors isolate the guest from the host, therefore you can use VMs to run buggy or untrusted software reasonably safely.

- **Snapshots**: you can take "snapshots" of your virtual machine, capturing the entire machine state (disk, memory, etc.), make changes to your machine, and then restore to an earlier state. This is useful for testing out potentially destructive actions, among other things.

- Not 1-1 to hardware, that is hardware is shared.

Note: VMs are actually files. 

# Pros and Cons




#  Terminology

- Host OS:  actual OS on the physical computer
- Guest OS: OS running inside the virtual machine
- Virtual machine (VM): VirtualBox created to run guest OS.  

 


## Setup

- **Resources**: shared with host machine; be aware of this when allocating physical resources.

- **Networking**: many options, default NAT should work fine for most use cases.

- **Guest addons**: many hypervisors can install software in the guest to enable nicer integration with host system. You should use this if you can.





# VM Virtual Box

Oracle VM VirtualBox is a cross-platform virtualization application.

After installing, start Oracle VM VirtualBox by:

* Windows: From the Programs menu, click VirtualBox
* macOS: In the Applications folder, double-click VirtualBox
* Linux: Type VirtualBox in the terminal.  Alternatively, check System or System Tools of the Applications menu.

 
- VirtualBox Manager window will appear. See Figure 1







# Use Cases
* Server Virtualization (eliminate physical standalone servers)
	- physical to virtual migration
* Virtual Desktop Infrastructure (VDI)
	- Virtualization of all  desktops/OS data center
	- Thin Clients: endpoints that access virtual machine via network
		- Nothing on thin clients
		- Thick clients
	- Easy to manage and secure
	- Cost savings (invest in VM vs. hardware)
* Data center and cloud
	- run more services and software with smaller footprint
	- cloud computing is metered service
	- virtualization has enabled the era of cloud computing











# Create a VM

Click NEW in the VirtualBox Manager window (Figure 1).  A wizard will guide you through setting up a new virtual machine (VM).

Select: name (make it meaningful), directory location of VMs, guest OS, and RAM (e.g., 4GB)






![Drag Racing](Dragster.jpg)







#### Online User Manual

https://www.virtualbox.org/manual/UserManual.html#Introduction




## YouTube Videos Covering VM

[Beginner Guide 3 minutes](https://www.youtube.com/watch?v=yIVXjl4SwVo)
[NexGenT - What is Virtualization?](https://www.youtube.com/watch?v=L8A9PHeyRrY)
[Network Chuck](https://www.youtube.com/watch?v=wX75Z-4MEoM)
[How to Use VirtualBox - Beginners Guide](https://www.youtube.com/watch?v=sB_5fqiysi4)
[Containers vs VMs: What's the difference?](https://www.youtube.com/watch?v=cjXI-yxqGTI)




