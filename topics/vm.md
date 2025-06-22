<!--
layout: lecture
title: "Virtual Machines"
instructor: Quinlan, James
-->

# Virtual Machines

Virtual Machines (VMs), also called _hypervisors_, are software that extend the capabilities of your host machine so that it can run multiple OSs, inside multiple virtual machines, at the same time. It is a simulated computer that can be configured without affecting your host machine. As an example, you can run Windows and Linux on your Mac, run Windows Server 2016 on your Linux server, run Linux on your Windows PC, and so on, all alongside your existing applications. You can install and run as many virtual machines as you like. The only practical limits are disk space and memory.


## Why is Virtualization Useful?

* Sandbox
* Running multiple operating systems simultaneously
* Run software that only runs on particular operating systems.  
* Experiment with malicious software.
* Cross-platform software development.
* Create testing environments (mirror production)
* Create redundancy and failovers
* Easier software installations - such as _appliances_ (e.g., mail server)
* Testing and disaster recovery - a VM is a _container_ that can be frozen, copied, backed up, and transported. VMs offer a snapshot feature that saves the state, allowing it to be reverted to.  If something is corrupted, it is easy to revert to a previous saved state.
* Share resources but are independent of each other
* Can use multiple OS.
* Can serve webpages, databases, etc. 
* Place many servers or workstations on a single physical device 
* Reduce power utilization 
* Full use of hardware resources. Two VMs may utilize a significant portion of the unused resources.   
* Thread isolation - problems on a guest do not affect the host.  Great for cybersecurity.
* Infrastructure consolidation - Instead of running several physical machines that utilize hardware resources (which translates to electricity), several virtual machines (VMs) can be run on a single physical machine.  
	- If you don't think electricity is an issue, check out bitcoin mining.


## Disadvantages
*  VM slower than bare metal, thus certain applications can become _unusable_ on a VM.  
*  Managing virtual machines can be complicated
*  "Single Point of Failure" - if the host fails, so do all guests


## Useful features

- **Isolation**: Hypervisors isolate the guest from the host; therefore, you can use VMs to run buggy or untrusted software reasonably safely.

- **Snapshots**: You can take "snapshots" of your virtual machine, capturing the entire machine state (disk, memory, etc.), make changes to your machine, and then restore to an earlier state. This is useful for testing out potentially destructive actions, among other things.

- Not 1-1 to hardware, that is, hardware is shared.

Note: VMs are files. 

# Pros and Cons




#  Terminology

- Host OS:  actual OS on the physical computer
- Guest OS: OS running inside the virtual machine
- Virtual machine (VM): VirtualBox is created to run a guest OS.  

 


## Setup

- **Resources**: shared with host machine; be aware of this when allocating physical resources.

- **Networking**: There are many options; default NAT should work fine for most use cases.

- **Guest add-ons**: Many hypervisors can install software in the guest to enable more seamless integration with the host system. You should use this if you can.





# VM VirtualBox

Oracle VM VirtualBox is a cross-platform virtualization application.

After installing, start Oracle VM VirtualBox by:

* Windows: From the Programs menu, click VirtualBox
* macOS: In the Applications folder, double-click VirtualBox
* Linux: Type VirtualBox in the terminal.  Alternatively, check System or System Tools of the Applications menu.

 
- The VirtualBox Manager window will appear. See Figure 1


#### Online User Manual

[https://www.virtualbox.org/manual/UserManual.html#Introduction](https://www.virtualbox.org/manual/UserManual.html#Introduction)







## Use Cases
* Server Virtualization (eliminate physical standalone servers)
	- Physical to virtual migration
* Virtual Desktop Infrastructure (VDI)
	- Virtualization of all  desktops/OS data center
	- Thin Clients: endpoints that access a virtual machine via the network
		- Nothing on thin clients
		- Thick clients
	- Easy to manage and secure
	- Cost savings (invest in VM vs. hardware)
* Data center and cloud
	- Run more services and software with a smaller footprint
	- Cloud computing is a metered service
	- Virtualization has enabled the era of cloud computing











## Create a VM

Click NEW in the VirtualBox Manager window (Figure 1).  A wizard will guide you through setting up a new virtual machine (VM).

Select: name (make it meaningful), directory location of VMs, guest OS, and RAM (e.g., 4GB)






![Drag Racing](Dragster.jpg)



## Other Virtual Machine Software
* VMware
* Parallels (macOS)
* QEMU
* Citrix Hypervisor
* Microsoft Hyper-V







## YouTube Videos Covering VM

- [Beginner Guide 3 minutes](https://www.youtube.com/watch?v=yIVXjl4SwVo)
- [NexGenT - What is Virtualization?](https://www.youtube.com/watch?v=L8A9PHeyRrY)
- [Network Chuck](https://www.youtube.com/watch?v=wX75Z-4MEoM)
- [How to Use VirtualBox - Beginners Guide](https://www.youtube.com/watch?v=sB_5fqiysi4)
- [Containers vs VMs: What's the difference?](https://www.youtube.com/watch?v=cjXI-yxqGTI)




