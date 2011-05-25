CONSTRUINDO UMA APLICAÇÃO DO ZERO
  rails new blog
  cd blog
  rails g scaffold Post title:string body:text
  rake db:migrate
  rails s
  # Por validação no model de Post validates_presence_of title, :body
  # Copiar html pronto para views/layout/application.html.erb
  # Copiar common.css para public/stylesheets/
  # Copiar logo.png para public/images/
  # Alterar app/views/posts/index.html.erb
  # Inserir created_at no <span></span>
  # Inserir um post via seed
  # Inserir no model post default_scope :order => 'created_at DESC'
  # Incluir no helpers/post_helper o método cut_word
  def cut_word(word, size)
    if word.length > size
      word = "#{word.slice(0..size)} ..."
    end
    word
  end
  # Incluir cut_word no app/views/posts/index.html.erb
  # Copiar html para app/views/posts/show.html.erb
  # Copiar html para o form, edit, new
  rails g scaffold Comment name:string body:text
  # Inserir no migration de comments o t.references :post
  rake db:migrate
  has_many :comments  # models/post.rb
  belongs_to :post    # models/comment.rb
  resource :posts do
    resource :comments
  end
  # Deixar no controller de comments somente create e destroy
  # Inserir no views/posts/index.html.erb <%= render "comments/form", :post => @post, :comment => Comment.new %>
  # Inserir html no views/comments/_form.html.erb
  # Deletar de views/comments index, new, edit, show
  # Criar a partial _comments.html.erb e copiar html
  # Modificar no comments_contrller.rb a action create
  # Criar um arquivo pt-br.yml
  # Alterar no config/application.rb
  config.i18n.default_locale = "pt-BR"
  config.time_zone = 'Brasilia'
  # Inserir número de comentários no views/posts/index.html.erb
  # Remover public/images/rails.png e public/index.html
  # Routes inserir root :to => "posts#index"
  # Remover o arquivo public/index.html
  # Adicionar root :to => "posts#index" no arquivo config/routes.rb