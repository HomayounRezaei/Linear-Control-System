check wiki for finding explanation of project and codes

# **Ball and Beam**

## **1. Introduction**

### 1.1. General Review
The system that will be studied in this project is a gimbal system. This system is one of the classical control systems. This system, due to being nonlinear and unstable, caused by external factors such as slipping on the ground and disturbances like mechanical vibration, can be suitable for analysis and design purposes. In this example, a gimbal system is considered, where a gimbal has been mounted on a lever, as shown in Figure 1. The gimbal is allowed to move freely on the lever with one degree of freedom. One end of the lever is connected to a servo motor controlled by the servo system. We define the angle 
𝜃 as the angle of rotation of the lever. For example, for the tooth wheel of the servo motor, the 
𝜃 angle changes the angle of the lever relative to the horizontal plane. Gravity causes the gimbal to move along the length of the lever, and as a result, the position of the gimbal and the lever's angle are connected to each other. The ultimate goal of this system is to connect the servo motor and the lever to a reference point. By controlling the system, we can keep the gimbal at a desired point on the lever, and the disturbances on the gimbal will not affect its external trajectory on the lever.

> ![image](https://github.com/user-attachments/assets/4749fedb-9223-4d72-b4c3-20042eae2528)

Figure 1: Sample of the Rod and Ball System

### 1.2 Applications of the Rod and Ball System
This type of system is used in some computer games to simulate the control and movement of objects. It can also serve as a control tool for interacting with the virtual world in augmented reality (AR) games.

### 1.3 Project Objectives
In this project, we intend to model the system mathematically, analyze its poles and zeros, and then proceed to control the system using a specified architecture. You can see a sample of the actual rod and ball system in Figure 2.

![image](https://github.com/user-attachments/assets/217dfe0f-f1f0-45bd-9d13-5e1d010ee0b6)

Figure 2: Laboratory Rod and Ball System

***
## 2. Modeling of the Rod and Ball System
### 2.1 Modeling Methods
### 2.1.1 Lagrangian Method for Modeling
Lagrangian Mechanics is used to solve problems related to the movement of mechanical systems. It involves defining a Lagrangian function, which is the difference between the kinetic energy (𝐾) and potential energy (𝑈) of the system:

$$L = K-U $$

where:

* 𝑇 is the kinetic energy of the system associated with velocities.
* 𝑈 is the potential energy of the system associated with positions.

The equations of motion of the system can be described using the Euler-Lagrange equations:

![image](https://github.com/user-attachments/assets/1cfddd85-ac9c-4a8d-8249-48904bb3caf7)

where:

![image](https://github.com/user-attachments/assets/298a63ea-b2f0-48c1-988a-4eff38a69719)

​
  represents the external forces or torques.
By solving the Euler-Lagrange equations, you can determine the state variables as functions of time, which describe the motion of the system over time. This method is useful for analyzing and describing the motion of mechanical systems in fields like physics, robotics, and mechanical engineering.

### 2.2 Modeling using the Lagrangian Method
Let's extract the equations of motion for the rod and ball using this method, considering the system shown in Figure 3.

![image](https://github.com/user-attachments/assets/ca02ee82-8d4d-48ff-84ad-27d73df61de7)

Figure 3: Rod and Ball System


The ball slides on the rod without slipping, under the influence of gravity. Initially, we define a set of generalized coordinates that fully describe the system:

![image](https://github.com/user-attachments/assets/5ccea92f-fa9b-4c63-876b-8841688dd805)

where 𝑝(𝑡) is the position of the ball on the rod, and 
𝜃(𝑡) is the angle of the rod. The Lagrangian for the system is then:

$$L = K-U $$

To simplify the calculation of kinetic and potential energies, we consider the Cartesian coordinates 𝑥 and 𝑦 directions as shown in Figure 4.

![image](https://github.com/user-attachments/assets/e4783e9d-b42b-41c5-baa3-07ba3f9c0071)

Figure 4: Coordinate System for the Rod and Ball System

The kinetic energy of the rod is calculated as:

![image](https://github.com/user-attachments/assets/142df782-7083-4171-a7c2-915d9cc409e1)

where 𝐽 is the moment of inertia of the rod. The kinetic energy of the ball is:

![image](https://github.com/user-attachments/assets/1d0d0a5e-95d9-4347-bc7f-e83771ecf2d5)

Considering the relationship between angular and linear motion, we can express the ball's velocity as:

![image](https://github.com/user-attachments/assets/ae7238dd-975d-4c59-af41-2602278a21d4)

Using Cartesian coordinates, we can express the velocity as:

![image](https://github.com/user-attachments/assets/3b4337e6-f404-49cc-a35c-f8a73a15a3e2)

Based on the coordinates and location, the relationships from (9) to (14) are derived as follows:

![image](https://github.com/user-attachments/assets/6e88b5ba-791b-4587-915e-51e4f5dae157)

By substituting expressions (11) and (14) into equation (8), we obtain:

![image](https://github.com/user-attachments/assets/cfa2b4df-5d30-4954-b6a9-e59909ed7f85)

By substituting expressions (7) and (15) into equation (6), the kinetic energy of the body is obtained as:

![image](https://github.com/user-attachments/assets/eba3962e-6c40-4a20-951a-3c10041c9818)

The potential energy of the system is also calculated using equation (17) as follows:

![image](https://github.com/user-attachments/assets/ba062af6-87fe-4609-b07e-e0303e6a4bc1)

With the substitution of equations (6), (7), and (8) into equations (17) and (9), the resulting Lagrangian equation in the form of equation (18) will be:

![image](https://github.com/user-attachments/assets/a2a11ef3-0827-40ce-bf49-0ece58f29fae)

The first Lagrangian equation is written in the form of equation (19):

![image](https://github.com/user-attachments/assets/2da3ed06-bf61-444e-a0bd-b6fd3a4ce208)

Now, the equations can be computed step by step according to the Euler-Lagrange law using Equations 20, 21, and 22:

![image](https://github.com/user-attachments/assets/34131c75-49e6-4162-b614-eee82853750b)

By substituting Equations 20, 21, and 22 into Equation 19, the first equation of motion for the ball and rod system can be obtained as:

![image](https://github.com/user-attachments/assets/fd0594ba-5be5-4d5c-b3d3-5b8d3d5df524)

The second Euler-Lagrange equation is given by:

![image](https://github.com/user-attachments/assets/d6b38b1c-195b-40f2-a10a-cfe42cbf18c2)

Where 𝜏 represents the external torque applied to the system. Similar to the previous equations, the following can be computed:

![image](https://github.com/user-attachments/assets/8c728a5d-8406-4c0d-baa7-64f148a9ee3f)

By substituting Equations 25, 26, and 27 into the second Euler-Lagrange equation, the second equation of motion for the system is computed as:

![image](https://github.com/user-attachments/assets/798a9885-63f8-45ea-b784-a46ad4eb5e1c)

As a result of Equations 23 and 28, the equations of motion for the ball and rod system will be.

***
### 2.3 Real System Modeling of the Ball and Beam
In system modeling, there are often factors that are not considered, causing the model to not match the real system accurately.
In the ball and beam system, one of the factors not mentioned in the modeling is the deviations and delays exerted by the motor on the system. For precise system simulation, we add two parameters indicating model direction change delay and energy loss to the system. In the end, the complete model of the ball and beam system can be seen in Figure 8.

![image](https://github.com/user-attachments/assets/304b0a38-9568-48bb-99c9-4da5fc4055b8)

Figure 8: Real System Modeling

According to the above model, for modeling the deviations and delays of the motor and the beam transfer bar, we use a fixed spring with stiffness 𝐾. In the end, considering the conditions described, the governing equations for the system are as follows:

_Equations of Motion for the Real Ball and Beam System:_

![image](https://github.com/user-attachments/assets/076642f4-ac98-490f-b9d9-62b43711c3d5)


***
### 2.4 Single Input and Dual Output System Control
Given that the ball and beam system is a single input (beam position) and dual output (ball position and beam angle) system, designing a controller for it might not be straightforward. For this purpose, we consider designing an additional controller in the path for the feedback of 𝜃. In the system control design, the ball position is considered your goal. The block diagram of the designed control system is shown in Figure 9.

![image](https://github.com/user-attachments/assets/1d7e9d01-a6cd-4308-9c90-3d05c8186416)

Figure 9: Considered Architecture for System Control

**_Parameters_**

![image](https://github.com/user-attachments/assets/b3de9df6-e348-4535-a045-09b3405563c2)

**_System State and Input Variables_**

The mentioned system has 4 states, 1 control input, and 2 outputs which are introduced below:

![image](https://github.com/user-attachments/assets/d48134cc-1cbd-4f9b-ae71-8c5829c5d874)


***

# Requests (Phase 1)

**1. Derive the state-space equations of the system based on the simplified equations of motion and determine the equilibrium points of the system.**


* **_Equations of state of motion of the simplified ball and rod system_**

We define the solution of system state equations as follows:

![image](https://github.com/user-attachments/assets/1a5bf396-eefe-4bf3-bc81-7178192f5bb7)

![image](https://github.com/user-attachments/assets/25795fd4-d177-4e62-ad21-104125a2082a)

* **_Obtaining the equilibrium points of the simplified ball and rod system:_**

![image](https://github.com/user-attachments/assets/67f24f33-896f-4792-b95a-83e819b1aee9)

**2. In this step, derive the main equations of motion, meaning the actual equations of motion of the system, and use them to derive the state-space equations of motion.**
 
* According to the modeling by Lagrange method for the real system to this net:

![image](https://github.com/user-attachments/assets/0d5c2334-eb4b-4bbc-8f05-ceb1d374d954)

_* Equations of motion of the real ball and beam system_

We define the solution of system state equations as follows:

![image](https://github.com/user-attachments/assets/68d14416-448b-477e-95e2-472f6e26a361)

**3. To check the correctness of the obtained state equations, implement the first-order differential equations in Matlab software, and by solving these equations, plot the state variables in the time interval from 0 to 5 per step input. In the simulink file provided to you, draw the state variables in the range of 0 to 5 per step input. If these two graphs of state variables are exactly the same, your steps have been done correctly.**

![image](https://github.com/user-attachments/assets/7f3bc310-1325-40b9-a35d-97fdddea695f)

Step answer of the equations of the real system of ball and beam in matlab

![image](https://github.com/user-attachments/assets/87443cf5-922e-4d69-9f70-d007ce4d8037)

The step response of the equations of the real ball and beam system is given in the simulink file

**4. Considering the equilibrium points as points of balance, derive the linearized equations of motion from the equations of motion obtained in Task 3 around these equilibrium points. Using these linearized equations, derive the transfer function of the system. For small values (less than 10^-4), you can approximate the product of two such numbers to zero.**

**Linearization around the origin**

![image](https://github.com/user-attachments/assets/af4548c5-0f74-43a5-9c9f-e843c89c31f9)

As a result, the linearized state space matrix will be as follows:

![image](https://github.com/user-attachments/assets/659011b0-c46e-429b-b19b-41748e016b42)

To obtain the general transformation function, we must use the following formula:

![image](https://github.com/user-attachments/assets/e9d4e5db-59c4-44e0-a9a8-355a84e91457)

For convenience, we define $$Y_1(s)/U(s)$$ as $$G_p(s)$$ and $$Y_2(s)/U(s)$$ as $$G_𝜃(s)$$.

**5. Using the block diagram provided in Figure 9, derive the transfer function 𝑌(𝑠)/𝑈(𝑠).**

![image](https://github.com/user-attachments/assets/83053c2c-1ac2-493c-b4c8-b4f7b329c3ca)

General block diagram for system control.

According to the block diagram above to calculate 𝑋(𝑠)/𝑈(𝑠):

![image](https://github.com/user-attachments/assets/55b715e4-8bcb-4720-9cb4-0ae9d426867d)

which simplified the above expression was equal to:

![image](https://github.com/user-attachments/assets/fbb542f7-2f93-4235-8903-eb9a97271aed)

**6. Considering the negative unit feedback for the position of the sphere, draw and analyze the root locus of the system for all gain values. Also specify for what range of gain the closed loop system is stable.**

![image](https://github.com/user-attachments/assets/51c6be7a-237b-4ec4-8418-6548f49adcd7)

Root locus diagram of open loop system.

Now we want to check the profit margin for system stability.

* Root locus method

As can be seen, it does not become stable for any $$k$$ because it has a right pole and falls to the right of the 𝑗𝜔 axis for every 𝑘.

* Routh-Hurwitz method

![image](https://github.com/user-attachments/assets/5f67adb7-3c4e-4587-a172-5ac0578b2c6d)

![image](https://github.com/user-attachments/assets/0b4d6328-422b-4d7e-ade7-0dfbc0346b21)

For stability, all the elements of the first column must be positive, which is not established here for any 𝑘. So it is not stable for any 𝑘.

**7. At this stage, try to design a controller that has a step response of the system with maximum settling time of 8 seconds and maximum overshoot of 20%.**
 
Design: considering that our smaximum settling time of 8 seconds and maximum overshoot of 20%, our desired ROC is as follows:

![image](https://github.com/user-attachments/assets/f166dc06-ca27-49dd-9b13-ddb9b34efd84)

Red color is 𝜁𝜔𝑛 = 5.0 and yellow color is 𝜁 = 45.0. So the blue area satisfies both conditions.
Now we consider a point including this area. Our target area is the border point, i.e. 𝑠 = −0.5 + 0.98𝑗. That is, we must find the angle defect at this point with respect to the zeros and poles of the function.
To get the angle defect, we use the following method:
We draw the desired point on the page and then write the zeros and poles of the transformation function on the coordinate page. Then we connect each pole and zero to the desired point. Finally, we get the angle of each pole and zero relative to the horizon line and the desired point. which finally reached the 40° angle defect.
It is noteworthy that a pre-phase compensator can improve 45 degrees of angle violation at most. Then we use a pre-phase compensator or lead.
Now, we design the zero and poles of the lead conversion function using one of the three methods mentioned.

The method we chose:
Placing the zero of the transformation function lead (controller) in the place of the stable poles of the transformation function 𝑋(𝑠)/𝑈(𝑠).
By placing the zero of the controller in the place of the stable pole of the transformation function (𝑋(𝑠)/𝑈(𝑠), i.e. the point 𝑠 = -0.84), according to the angle defect, the controller pole is obtained at the point 𝑠 = -2.14.
Now we get the value of constant 𝑘_𝑐 with this method:

![image](https://github.com/user-attachments/assets/a924fd26-6882-4d7c-9574-2c047ecf055d)

As a result, the transformation function of the compensated system is as follows:

![image](https://github.com/user-attachments/assets/a33e8abd-5c73-4304-b44b-37479ae62293)

**8. Draw the step response of the controlled system and obtain its transient and steady state characteristics.**

![image](https://github.com/user-attachments/assets/c795594b-de20-4597-bb31-ca46c17beaf6)

Step response of the controlled system

![image](https://github.com/user-attachments/assets/aff0abe3-fc24-4415-8268-1889760b97e7)

As can be seen, its settling time is approximately equal to 7.57sec and its overshoot value is equal to 20%.
Its steady state error is also 130%. It should have reached the final value of 1, but as we can see, it reached 2.3. To compensate for persistent error, we must design a lag controller.

**9. Draw the root locus diagram of the controlled system and analyze it and determine for what range of gain the system will be stable.**

![image](https://github.com/user-attachments/assets/f8f517aa-5353-45e4-9061-00d6fdc9d96e)

Controlled system root locus diagram

* Root locus method

As can be seen, for a certain interval of 𝑘, it falls from the left pole of the 𝑗𝜔 axis.

* Routh-Hurwitz method

![image](https://github.com/user-attachments/assets/5140c417-fde6-45c6-a5e6-874c68a902f4)
For stability, all the elements of the first column must be positive. If we calculate 13.76 < 𝑘 < 100, we get comes. That is mean, for 13.76 < 𝑘 < 100, the system is stable.

**10. Apply the designed controller to the nonlinear system and plot the step response. Get its transient and steady state characteristics and compare with the linear system.**

In this step, we want to add the designed controller to the nonlinear system. For this purpose, we use the provided Simulink Matlab to implement the nonlinear state space equations.

![image](https://github.com/user-attachments/assets/a1fd13b8-f294-4d9a-afd6-2e500e7de893)
Here, 𝑛𝑢𝑚(𝑠)/𝑑𝑒𝑛(𝑠) is the same controller that we designed. The rest of the system is our non-linear system except for the feedback we added.

* Step response 

![image](https://github.com/user-attachments/assets/942db68f-f671-4bde-8ff4-2ef33fcd23c6)
As you can see, the sitting time is approximately 8.1 seconds and the amount of jump is approximately 20%.
The steady state error is 130% like the linearized system.
As we have seen, it is very little different from the linearized system.

