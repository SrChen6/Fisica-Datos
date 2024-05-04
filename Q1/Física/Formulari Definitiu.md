Energies/Treball:
	Impuls: $\vec I=\int_0^t\vec F dt=\Delta\vec p$ 
	Treball: $W=\int_A^B\vec Fdr=\int_{t_A}^{t_B} Pdt= \Delta E$ per no conservatius
	Potencia:  $P=\frac{dW}{dt}=\vec F·\vec v$ 
	Moment angular: $\vec L_Q =m(\vec r_Q\times\vec v)=I\vec \omega$ 
	Moment de la força: $\vec M_Q =(\vec r_Q\times\vec F)=I\alpha$  

$\iff$ 

Oscil·lacions:
	simples: 
		$\omega_o=\sqrt\frac k m$ per molla, $\omega_o=\sqrt\frac g l$ per pèndul
		Angle inicial: $\phi=arctg(\frac{-\dot x_o}{\omega_ox_o})$
		Amplitud: $A=\sqrt{x_o^2+\frac{\dot x_o}{\omega_o}^2}$
		Aproximacions de potencial: $U(x)\approx U(x_e)+\frac 1 2\frac{d^2U}{dx^2}(x-x_e)^2$, on $k=\frac{d^2U}{dx^2}(x_e)$ 
	esmorteïdes:
		$\gamma =\frac b {2m}=\frac {-1}{nT}\ln\frac{x_{n}}{x_{M}}=\frac {-1}{nT}\ln\frac{E_{n}}{E_{M}}=\frac 1{2t}\ln\frac{E(t)}{E_{o}}$ 
		Sobre-esmorteït:
			$x=A_{1}\exp(-\gamma_{1}t)+A_{2}\exp(-\gamma_{2}t)$
			$A_{1}=-\frac{v_{o}+x_{o}\gamma_{2}}{\gamma_{1}-\gamma_{2}},A_{2}=\frac{v_{o}+x_{o}\gamma_{1}}{\gamma_{1}-\gamma_{2}}$
			$\gamma_{1}=\gamma+\sqrt{\gamma^2-\omega_{o}^{2}},\gamma_{2}=\gamma-\sqrt{\gamma^2-\omega_{o}^{2}}$
		Feblement esmorteït:
			$\omega_1=\sqrt{\omega_0^2-\gamma^2}$
			$x=Ae^{-\gamma t}\cos(\omega_{1}t+\phi)$
			$\phi=arctg(\frac 1 \omega_{1} [-\gamma-\frac {\dot x_{o}} {x_{o}}])$
			$A=\sqrt{x_o^2+(\frac{x_0\gamma+\dot x_{o}}{\omega_{1}})^2}$
			$E=\frac 1 2 kA^2e^{-2\gamma t}(1-\frac \gamma\omega_{1}\sin(2(\omega_{1}t+\phi)))$ (no utilitzat sovint)
			$E=E_oe^{-2\gamma t}$ si $\gamma<<\omega$ 
			$v=-\gamma_{1} A_{o}e^{-\gamma t}\cos(\omega_{1}t+\phi)-\omega_{1}A_{o}e^{-\gamma t}\sin(\omega_{1}t+\phi)$
		Punt crític:
			$x=e^{-\gamma t}(c_1+c_2t), c_1=x_o,c_{2}=\dot x+\gamma x$
	Qualitat:
		Temps de relaxació: $\tau_E=\frac1 {2\gamma}$
		nº oscil·lacions: $n_E=\frac{\omega_{1}} {4\gamma\pi}$
		Factor de qualitat: $Q=\frac{2\pi}{|\frac{\Delta E}{E}|_{T}}=\frac{2\pi}{2\gamma T}=2\pi·\frac{\tau_{E}} T=2\pi n_{E}$ on $|\frac{\Delta E}{E}|=1-\exp(-2\gamma T)$ 
	forçades:
		$x_p=A_{p}\cos(\omega t+\delta)$
		$A_{p}=\frac{F_{o}}{m\sqrt{(\omega_{o}^{2}-\omega^{2})^{2}+4\gamma^{2}\omega^{2}}}$
		$\tan(\delta)=\frac{2\gamma\omega}{\omega_{o}^{2}-\omega^{2}}$
		$<P>_{T}=\frac{F_{o}^{2}\gamma\omega^{2}}{m[(\omega_{o}^{2}-\omega^2)^{2}+4\gamma^{2}\omega^{2}]}$
		$P_{ext}=\frac 1 2F_oV_{o}\sin(\delta)$

Gravitació:
	$\vec F=-G\frac {Mm} {r^{2}}\hat r$ 
	$\vec v=v_{r}\hat r+r\dot\theta$ 
	$\vec L_{o}=mr^{2}\dot\theta\hat k$ 
	$E_{c}=\frac 1 2m\dot r^{2}+\frac{L_{o}^{2}}{2mr^2}$
	$U=-G\frac{Mm} r +C$
	$U_{eft}=\frac{L_{o}^{2}}{2mr^{2}}-G\frac{Mm}r$ 
	$r=\frac\alpha{1+\epsilon\cos\theta}$
	$\alpha=\frac{L_{o}^{2}}{GMm^{2}}=a(1-\epsilon^2)$ 
	$E=-\frac{RMm}{2a}=\frac{(\epsilon^2-1)GMm}{2\alpha}$
	En una el·lipse: $\epsilon=\frac c a$ 
	$L_{o}=Mr_{p}v_{p}=mrv\sin(\hat{rv})$ 