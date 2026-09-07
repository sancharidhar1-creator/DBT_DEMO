{%macro get_Season(x)%}
  case when month(To_timestamp({{x}})) in (12,1,2)
    Then 'WINTER'
    when month(To_timestamp({{x}})) in (3,4,5)
    ThEn 'Spring'
    when  month(To_timestamp({{x}})) in (6,7,8)
    ThEn 'SUMMER'
    ELSE 'AUTUMN'
    END AS station_Year
{%endmacro%}


{%macro day_type(x)%}
   Case when dayname(To_timestamp({{x}}) ) in ('Sat', 'Sun')
    then 'WEEKEND'
    else 'BUSINESS DAY'
    END 
{%endmacro%}