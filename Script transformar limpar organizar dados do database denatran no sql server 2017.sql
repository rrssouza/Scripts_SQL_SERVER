USE denatran
GO

/*Script SQL lIMPAR, transformar dados do BD Denatran*/

SELECT ZZZ.Z, LTRIM(REPLACE(Z,'MMC', '')) AS AB ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
 FROM
      (SELECT WWW.W, LTRIM(REPLACE(W,'NISSAN', '')) AS Z ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
       FROM
           (SELECT YYY.Y, LTRIM(REPLACE(Y,'HYUNDA', '')) AS W ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
            FROM
                (SELECT XXX.X, LTRIM(REPLACE(X,'HYUNDAI', '')) AS Y ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                 FROM
                     (SELECT VVV.V, LTRIM(REPLACE(V,'AUD', '')) AS X ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                      FROM
                          (SELECT UUU.U, LTRIM(REPLACE(U,'LR', '')) AS V ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                           FROM
                               (SELECT TTT.T, LTRIM(REPLACE(T,'AUDI', '')) AS U ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                                FROM
                                    (SELECT SSS.S, LTRIM(REPLACE(S,'BMW', '')) AS T ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                                     FROM
                                         (SELECT RRR.R, LTRIM(REPLACE(R,'PORSCHE', '')) AS S ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                                          FROM
                                   (SELECT QQQ.Q, LTRIM(REPLACE(Q,'RENAULT', '')) AS R ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                                    FROM
                             (SELECT PPP.P, LTRIM(REPLACE(P,'KIA', '')) AS Q ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                              FROM
                       (SELECT OOO.O, LTRIM(REPLACE(O,'CHEVROLET', '')) AS P ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                        FROM
                 (SELECT NNN.N, LTRIM(REPLACE(N,'TOYOTA', '')) AS O ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                  FROM
           (SELECT MMM.M, LTRIM(REPLACE(M,'FIAT', '')) AS N ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
            FROM
     (SELECT LLL.L, LTRIM(REPLACE(L,'VW', '')) AS M ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
      FROM
(SELECT JJJ.J, LTRIM(REPLACE(J,'HONDA', '')) AS L ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
 FROM
     (SELECT III.I, LTRIM(REPLACE(I,'GM', '')) AS J ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
      FROM
          (SELECT HHH.H, LTRIM(REPLACE(H,'GMC', 'GM')) AS I ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
           FROM
               (SELECT GGG.C, LTRIM(REPLACE(C,'FORD', '')) AS H ,E ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                FROM
                    (SELECT E ,C ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                     FROM
                         (SELECT EEE.E ,C ,[UF] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                          FROM
                              (SELECT DDD.D AS E ,[UF] ,[MARCAMODELO] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] ,C
                               FROM 
	                               (SELECT CCC.C, SUBSTRING(C,0,CHARINDEX(' ', CCC.C)) AS D  ,[UF] ,[MARCAMODELO] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
                                    FROM 
                                        (SELECT BBB.B, REPLACE(B,'/', ' ') AS C ,[UF] ,[MARCAMODELO] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 
	                                     FROM  
                                             (SELECT AAA.A, LTRIM(REPLACE(A,'IMP/', ' ')) AS B ,[UF] ,[MARCAMODELO] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS]
			                                  FROM 
                                                  (SELECT LTRIM(REPLACE(MARCAMODELO, 'I/', ' ')) AS A ,[UF] ,[MARCAMODELO] ,[MUNICIPIO] ,[ANOFABRICACAO] ,[QTDVEICULOS] 

                                                   FROM [denatran].[dbo].[tb_denatran]) AS AAA) AS BBB) AS CCC) AS DDD) AS EEE) FFF) AS GGG) AS HHH) AS III) AS JJJ) AS LLL) AS MMM) AS NNN) AS OOO) AS PPP) AS QQQ) AS RRR) AS SSS) AS TTT) AS UUU) AS VVV) AS XXX) AS YYY) AS WWW) AS ZZZ