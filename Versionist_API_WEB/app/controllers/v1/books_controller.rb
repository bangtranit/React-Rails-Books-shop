class V1::BooksController < V1::BaseController
	skip_before_action :verify_authenticity_token
	serialization_scope :view_context
	def index
		books = Book.all
		render json: success_template(books, "Ok roi chu")
		# render json: books, each_serializer: BookSerializer
		# render json: success_json_with_serializer_template(books, BookSerializer, "Ok roi chu")
	end

	def show
		book = Book.find_by_id(params[:id])
		render json: success_template(book, "Book")
	end

	def create
		book = Book.new(book_params)
		if book.save
			render json: success_template(book, "Create ok nhe")
		else
			render json: error_template(book, "Create failed")
		end
	end

	def update
		book = Book.find_by_id(params[:id])
		if book.present? && book.update(book_params)
			render json: success_template(book, "Update Ok nhe")
		else
			render json: error_template("Update failed")
		end
	end

	def destroy
		book = Book.find_by_id(params[:id])
		if book.present? && book.destroy
			render json: sucess_message_template("Delete ok")
		else
			render json: error_template("Delete failed")
		end
	end

	private
		def book_params
			params.permit(:title, :author, :weight, :publisher, :language, :pages, :publication_date)
		end
end
