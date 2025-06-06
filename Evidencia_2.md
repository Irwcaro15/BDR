#Evidencia 2

##Se convierte la base de datos no estructurada en un modelo entidad-relación, representada con un diagrama entidad-relación.

###En el diagrama se muestra las entidades, atributos, dominio y relación 

```mermaid

  
flowchart TD
    A["Nombre de la cuenta"] --- C{"Tiene"} & E{"Trabajo"}
    C --- D["Agente"]
    n1(["Numero de unidades"]) --- A
    n2(["Fecha de entrada"]) --- A
    n3(["Folio"]) --- A
    S1(["Nombre completo del agente"]) --- D
    S2(["ID"]) --- D
    S3(["Segmentación"]) --- D
    n4["String"] --- S1
    n5["Float"] --- S2
    n6["String"] --- S3
    E --- F["Propuesta"]
    T1(["Fecha fin"]) --- F
    T2(["Prima neta"]) --- F
    T3(["Observaciones de la cuenta"]) --- F
    n7["Float"] --- n1
    n8["Date"] --- n2
    n9["String"] --- n3
    n10["Date"] --- T1
    n11["Float"] --- T2
    n12["String"] --- T3
    n4@{ shape: hex}
    n5@{ shape: hex}
    n6@{ shape: hex}
    n7@{ shape: hex}
    n8@{ shape: hex}
    n9@{ shape: hex}
    n10@{ shape: hex}
    n11@{ shape: hex}
    n12@{ shape: hex}
```
