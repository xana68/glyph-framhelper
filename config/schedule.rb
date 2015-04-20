every 1.day, :at => '4:00 am', roles: [:db] do
  command "backup perform --trigger #{ environment }"
end
