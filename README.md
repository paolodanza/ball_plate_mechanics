Controllo Dinamico di un Sistema Meccanico (Ball-Plate Control)



Questo progetto sviluppa e simula un sistema di controllo per una piattaforma mobile (Plate) utilizzando l'ambiente MATLAB/Simulink. Il repository include la modellistica matematica, le funzioni di integrazione delle equazioni differenziali (ODE) e i modelli di simulazione con e senza logica di controllo.

🛠 Tecnologie Utilizzate



&nbsp;   MATLAB: Per l'analisi numerica e la definizione delle funzioni ODE.



&nbsp;   Simulink: Per la modellazione a blocchi e la simulazione del sistema dinamico.



&nbsp;   Simscape (se applicabile): Per la modellazione fisica dei componenti.



📂 Struttura del Repository



&nbsp;   Model.slx: Modello Simulink principale del sistema.



&nbsp;   ode\_fun.m / omega\_ode\_fun.m: Funzioni MATLAB che definiscono le equazioni differenziali del sistema.



&nbsp;   corsa2024A.slx: Variante del modello per scenari di test specifici.



&nbsp;   progetto\_prova\_plate\_nocontrollo.slx: Modello di base per l'analisi del sistema in anello aperto (open-loop).



&nbsp;   progetto\_prova\_plate\_nocontrollo\_subsystems.slx: Versione modularizzata del modello senza controllo.



&nbsp;   validazione.m: Script per il confronto tra i dati simulati e i risultati attesi.



🚀 Come Eseguire la Simulazione



&nbsp;   Assicurarsi di avere MATLAB e Simulink installati.



&nbsp;   Aprire MATLAB e posizionarsi nella cartella del progetto.



&nbsp;   Eseguire lo script validazione.m per caricare i parametri necessari nello Workspace.



&nbsp;   Aprire il file Model.slx e avviare la simulazione cliccando su Run.

