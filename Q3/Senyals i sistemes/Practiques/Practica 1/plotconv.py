def plotconv(Tx, Th, Ty):
    """
    Presenta les gràfiques dels 3 senyals típics en una convolució («x», «h» i «y») apilats de manera que es puguin apreciar bé les seves relacions temporals
    
    Paràmetres:
      Tx: Una TUPLA (x,nx) que conté, en aquest ordre, el senyal «x» i la seqüencia d'índexs associada, «nx».
      Th: Una TUPLA (h,nh) que conté, en aquest ordre, el senyal «h» i la seqüencia d'índexs associada, «nh».
      Ty: Una TUPLA (y,ny) que conté, en aquest ordre, el senyal «y» i la seqüencia d'índexs associada, «ny».
      
      Òbviament, els dos vectors de cada TUPLA han de tenir la MATEIXA LONGITUD.
      
    Retorna: Res (però dibuixa les 3 gràfiques)
    """
    fig, (axX, axH, axY) = plt.subplots(3, 1, sharex=True, constrained_layout=True)
    axX.stem(Tx[1], Tx[0])
    axX.grid(True)
    axX.set_ylabel('x[n]')
    axX.set_title('Entrada')
    axH.stem(Th[1], Th[0])
    axH.grid(True)
    axH.set_ylabel('h[n]')
    axH.set_title('Resposta impulsional')
    axY.stem(Ty[1], Ty[0])
    axY.grid(True)
    axY.set_ylabel('y[n]')
    axY.set_xlabel('n')
    axY.set_title('Sortida')
