with CTE as(

    Select
     
     To_timestamp(Started_At) As Started_At,
     Date(To_timestamp(Started_At) ) As DATE_StartedAt,
     Hour(To_timestamp(Started_At) ) As  MonthStartedate,

    {{day_type('started_at')}} AS DAYTYPE,

  {{get_Season('started_at')}}

     from 
     {{ source('demo', 'bike') }}
     where Started_At != 'started_at'
)

Select * from CTE