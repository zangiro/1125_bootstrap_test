class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)

    result = Geocoder.search(@post.address).first
    # gemのgeocoderを使って処理。Googleなどに問い合わせ対応する位置情報を返す。その結果の中から最初の結果（最も関連性が高いもの）を取り出す
    if result
      @post.latitude = result.latitude
      @post.longitude = result.longitude
    end

    if  @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def test_a
  end

  private

    def post_params
      params.require(:post).permit(:title, :address)
    end
end
