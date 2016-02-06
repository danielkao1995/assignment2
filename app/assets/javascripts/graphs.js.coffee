jQuery ->
  Morris.Line({
    element: 'profiles_chart',
    data: $('#profiles_chart').data('profiles')
    xkey: 'Age',
    ykeys: ['Height','Weight','Age'],
    labels: ['Height','Weight','Age']
  });