-- Queries a Eroute

-- 1) Query visitas
select Visita.VisitaClave, Visita.DiaClave, Visita.ClienteClave, Visita.RUTClave, Ruta.AlmacenID, Visita.Numero,
       Visita.FechaHoraInicial, Visita.FechaHoraFinal from Visita
inner join Ruta on Visita.RUTClave = Ruta.RUTClave

        where  cast(Visita.DiaClave as date)  between  '01-01-2024' and '10-01-2024'

-- es dia, mes y año


select top 100 * from  Vendedor;
select top 100 * from  Visita;
select top 100 * from  Ruta;




-- Query visitas agregando la UNE
select VisitaClave, DiaClave, ClienteClave,RUTClave, Numero, FechaHoraInicial, FechaHoraFinal from Visita
        inner join Vendedor on Visita.MUsuarioID = U.MUsuarioId
        where  cast(DiaClave as date)  between  '01-01-2024' and '10-01-2024'



select VisitaClave, DiaClave, ClienteClave,RUTClave, Numero, FechaHoraInicial, FechaHoraFinal from Visita
where cast(DiaClave as date ) ='14-2-2024'




-- Ventas, cambios físicos y carga

select * from TransProd where Tipo = 2 and DiaClave = '02/03/2024' ; --  Carga (lo que realmente se carga)

select  top 1000 * from TransProd




