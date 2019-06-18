rails g model User display_name:string email:string password_digest:string admin:boolean --no-test-framework

rails g model Game title:string rating:integer --no-test-framework

rails g model Genre user_id:integer game_id:integer category:string --no-test-framework

rails g controller Users new show --no-test-framework

rails g controller Sessions new create destroy --no-helper --no-assets --no-controller-specs --no-test-framework

rails g controller Games index new show edit create destroy --no-test-framework

rails g controller Genres create --no-test-framework