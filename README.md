# Purpose

The purpose of this application is to centralize the hundreds of ad hoc workflows where things are falling through the cracks in providing aid to PR recovery, and to be potentially used to address recovery in future disaster recovery situations.

# Developer Assistance

Fork and clone. Picjk an issue/feature. Develop and submit pull requests. I'll check them out, make sure they work and then put them in. 

I have pretty limited time. So ANY additional assistance to get his launched is greatly appreciated! The scope of the project is detailed in the readme and there are a bunch of features I need to develop listed in the issues board. The description in issues is brief, just the main idea. Please refer back to the readme for more details on planned funcionality.

# What the site will do

The various workflows in the ad hoc WhatsApp groups include:

* Coordination of medical evacuations from the island(s) (i.e. Medevacs)
* Coordination of regular passenger evacuations from the island(s) 
*	Transporting relief goods to the island(s)
*	Transporting volunteers to the island(s)
*	Ensuring people on the island are aware of where resources are
*	Identifying the best answer available when people ask: How can I help?

As is evident, there are a few core components common to many of the workflows:

*	Organizing Land Transportation
*	Organizing Air Transportation
*	Organizing Civilian Transportation
*	Maintaining an Inventory of Goods
*	Tracking Goods 
*	Maintaining a Record for Metrics

This application intends to unify the common data sets amongst the entire workflow to provide the opportunity for end-to-end maximization of efforts and transparency.

# General Design

The general concept is a platform that helps users identify their role, what they have, what they need, and identify resources to meet that need.  The haves / needs are attributed to that type of user (as a category, thereby indicating which items should be included in that profile).  Once the has/needs are met for that workflow, the user can see all the active numbers of their workflow and mark them as they are completed.

The general back end design is a database that filters for the type of user / workflow selected.  As they identify their “haves”, that aspect of the workflow is met filters for the type of user and corresponding columns.  Then as they identify their “need”  that each user has their specific type of dashboard, or they can see the database of all items and points of contact for them.

# Functionality
## User Types & Walkthroughs
### I have money

This is a unique user that wants to find what part of the process to provide funds for, and is looking to answer “Where can I best apply this funding to maximize the impact where I see it the most necessary?”

 After login, this user is able to either

*	Target funding by workflow: see all the available workflows, be able to select a workflow or point on a workflow, and see the contacts for those divisions.

*	Target funding by group: See a database of all the available groups, and what they are working on.  See the point of contact and reach out to offer the funds.

### I want to volunteer from the mainland

After creating a login, this user wants to either:

* Provide a workflow integrated service: This type of service includes assistance staffing donation centers, transporting goods to the warehouses, palletizing the materials and inventorying, and transporting those goods to the airplane

*	Provide a workflow: This type of service is often an entire organization focused on one or only a few goals (e.g. Full end-to-end Medevacs)

*	Provide a skill:  This type of volunteering involves providing services often in the regular scope of business to the operations of the workflow architecture, including programming, project management, etc…

*	Provide a service:  This type of volunteering involves essential but ancillary services to the principle workflow, including providing temporary housing for displaced peoples, helping displaced people find homes, helping displaced people find jobs, or alternatively provide work for displaces people, provide training for displaced people, provide translation services, etc…

### I want to volunteer on the island

	After creating a login, this user want to:

*	Identify the Organization: Identify a sponsoring organization, and volunteer to be sent on behalf of that organization. 

*	Identify the Need:  Identify a partner organization on the island with a clear need, and reach out and volunteer to meet that need.

*	Provide a Service: Travel to the island in order to provide a business / personal service (e.g. answer bulletin board questions for people still looking for / checking on loved ones)

### I have goods I want to donate
	
After creating a login, this user:

*	Donate food / water 
*	Donate medical supplies  
*	Has a product/service they would like to offer to the island
*	Other donations (e.g. fuel, concert)

### I have a trucking company

After creating a login, this user want to:

*	Transport goods from donation centers to airports

*	Transport goods from donation centers to warehouses

*	Transport goods from warehouses to airports

*	Transport goods from PR Airports to Distribution Centers

### I have a warehouse

After creating a login, this user want to:

*	Identify sources of goods to be stored in warehouses

*	Identify when goods will be leaving their warehouse


### I have a plane

After creating a login, this user want to:

*	Identify customers that need transportation services and when

*	See traffic for other relief trips to find the right windows for deliveries

*	Know the details on the ground in Puerto Rico by airport for landings


Unifying Workflow Map (Back-End Database)
asdf
Technical Add-Ons
Adsf
*	Live Air Traffic Feed (API)
*	Amount of money going to different accounts
*	API to say it’s a valid charity
*	Mesh network
*	Legal Document Disclaimers at each stage
*	Uploads

Business Details

This tool would be intended for potential use for any disaster scenario for civilians to identify needs on the ground and meet those needs beyond any complications.

