Dynamic Control of a Mechanical System (Ball-Plate Control)

This project focuses on the development and simulation of a control system for a mobile platform (Plate) using the MATLAB/Simulink environment. The repository includes mathematical modeling, Ordinary Differential Equation (ODE) integration functions, and simulation models for both open-loop and closed-loop control logic.
🛠 Technologies Used

    MATLAB: For numerical analysis and ODE function definitions.

    Simulink: For block diagram modeling and dynamic system simulation.

    Simscape (where applicable): For physical modeling of mechanical components.

📂 Repository Structure

    Model.slx: Main Simulink model of the system.

    ode_fun.m / omega_ode_fun.m: MATLAB functions defining the system's differential equations.

    corsa2024A.slx: Model variant for specific testing scenarios.

    progetto_prova_plate_nocontrollo.slx: Baseline model for open-loop system analysis.

    progetto_prova_plate_nocontrollo_subsystems.slx: Modularized version of the open-loop model.

    validazione.m: Script for comparing simulated data with expected results.

🚀 How to Run the Simulation

    Ensure MATLAB and Simulink are installed.

    Open MATLAB and navigate to the project folder.

    Run the validazione.m script to load the required parameters into the Workspace.

    Open the Model.slx file and start the simulation by clicking Run.