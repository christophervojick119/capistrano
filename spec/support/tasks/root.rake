task :am_i_root do
  on roles(:all) do |host|
    host.user = 'root'
    ident = capture :id, '-a'
    info "I am #{ident}"
  end
end
