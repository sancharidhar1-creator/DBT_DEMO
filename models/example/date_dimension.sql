with CTE as(

    Select
     
     To_timestamp(Started_At) As Started_At,
     Date(To_timestamp(Started_At) ) As DATE_StartedAt,
     Hour(To_timestamp(Started_At) ) As  MonthStartedate,

    Case when dayname(To_timestamp(Started_At) ) in ('Sat', 'Sun')
    then 'WEEKEND'
    else 'BUSINESS DAY'
    END AS DAYTYPE
     from 
     {{ source('demo', 'bike') }}
     where Started_At != 'started_at'
)

Select * from CTE