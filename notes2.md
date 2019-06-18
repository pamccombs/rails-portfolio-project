rails g model User display_name:string email:string password_digest:string admin:boolean --no-test-framework

rails g model Game title:string rating:integer --no-test-framework

rails g model Genre user_id:integer game_id:integer --no-test-framework

rails g controller Users new --no-test-framework

rails g controller Sessions new create destroy --no-helper --no-assets --no-controller-specs --no-test-framework

rails g controller Attractions index new show edit --no-test-framework

rails g controller Rides create --no-test-framework