require 'rails_helper'

RSpec.describe VideosController, :type => :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }
  context "Admin" do
    before (:each) do
      @user = FactoryGirl.create :user, :admin
      sign_in @user
    end
    describe "GET index" do
      it "returns http success" do
        course = FactoryGirl.create :course
        level = FactoryGirl.create :level
        get :index, {level_id: level.id, course_id: course.id}
        expect(response).to be_success
      end
    end

    describe "GET new" do
      it "returns http success" do
        course = FactoryGirl.create :course
        level = FactoryGirl.create :level
        get :new, {level_id: level.id, course_id: course.id}
        expect(response).to be_success
      end
    end

    describe "POST create" do
      describe "with valid params" do
        it "creates a new video" do
          expect {
            post :create, {:video => valid_attributes}, valid_session
          }.to change(Video, :count).by(1)
        end

        it "assigns a newly created video as @video" do
          post :create, {:video => valid_attributes}, valid_session
          expect(assigns(:video)).to be_a(Video)
          expect(assigns(:video)).to be_persisted
        end

        it "redirects to the created video" do
          post :create, {:video => valid_attributes}, valid_session
          expect(response).to redirect_to(video.last)
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved video as @video" do
          post :create, {:video => invalid_attributes}, valid_session
          expect(assigns(:video)).to be_a_new(Video)
        end

        it "re-renders the 'new' template" do
          post :create, {:video => invalid_attributes}, valid_session
          expect(response).to render_template("new")
        end
      end
    end

    describe "GET edit" do
      it "returns http success" do
        video = Video.create! valid_attributes
        get :show, {:id => video.to_param}, valid_session
        get :edit
        expect(response).to be_success
      end
    end

    describe "PUT update" do
      describe "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested video" do
          video = Video.create! valid_attributes
          put :update, {:id => video.to_param, :video => new_attributes}, valid_session
          video.reload
          skip("Add assertions for updated state")
        end

        it "assigns the requested video as @video" do
          video = Video.create! valid_attributes
          put :update, {:id => video.to_param, :video => valid_attributes}, valid_session
          expect(assigns(:Video)).to eq(video)
        end

        it "redirects to the video" do
          video = Video.create! valid_attributes
          put :update, {:id => video.to_param, :video => valid_attributes}, valid_session
          expect(response).to redirect_to(video)
        end
      end

      describe "with invalid params" do
        it "assigns the video as @video" do
          video = Video.create! valid_attributes
          put :update, {:id => video.to_param, :video => invalid_attributes}, valid_session
          expect(assigns(:Video)).to eq(video)
        end

        it "re-renders the 'edit' template" do
          video = Video.create! valid_attributes
          put :update, {:id => video.to_param, :video => invalid_attributes}, valid_session
          expect(response).to render_template("edit")
        end
      end
    end

    describe "GET show" do
      it "returns http success" do
        video = Video.create! valid_attributes
        get :show, {:id => video.to_param}, valid_session
        expect(response).to be_success
      end
    end

    describe "GET destroy" do
      it "destroys the requested video" do
        video = Video.create! valid_attributes
        expect {
          delete :destroy, {:id => video.to_param}, valid_session
        }.to change(Video, :count).by(-1)
      end

      it "redirects to the videos list" do
        video = Video.create! valid_attributes
        delete :destroy, {:id => video.to_param}, valid_session
        expect(response).to redirect_to(videos_url)
      end
    end
  end

end
