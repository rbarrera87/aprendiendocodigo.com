require 'rails_helper'

RSpec.describe LevelsController, :type => :controller do
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
        get :index, {course_id: course.id}
        expect(response).to be_success
      end
    end

    describe "GET show" do
      it "returns http success" do
        level = Level.create! valid_attributes
        get :show, {:id => level.to_param}, valid_session
        expect(response).to be_success
      end
    end

    describe "GET new" do
      it "returns http success" do
        course = FactoryGirl.create :course
        get :new, { course_id: course.id }
        expect(response).to be_success
      end
    end

    describe "POST create" do
      describe "with valid params" do
        it "creates a new level" do
          expect {
            post :create, {:level => valid_attributes}, valid_session
          }.to change(Level, :count).by(1)
        end

        it "assigns a newly created level as @level" do
          post :create, {:level => valid_attributes}, valid_session
          expect(assigns(:level)).to be_a(Level)
          expect(assigns(:level)).to be_persisted
        end

        it "redirects to the created level" do
          post :create, {:level => valid_attributes}, valid_session
          expect(response).to redirect_to(level.last)
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved level as @level" do
          post :create, {:level => invalid_attributes}, valid_session
          expect(assigns(:level)).to be_a_new(Level)
        end

        it "re-renders the 'new' template" do
          post :create, {:level => invalid_attributes}, valid_session
          expect(response).to render_template("new")
        end
      end
    end

    describe "GET edit" do
      it "returns http success" do
        course = Course.create! valid_attributes
        get :show, {:id => course.to_param}, valid_session
        get :edit
        expect(response).to be_success
      end
    end

    describe "PUT update" do
      let(:level) {  FactoryGirl.create :level }
      describe "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested level" do
          put :update, {:id => level.to_param, :level => new_attributes}, valid_session
          level.reload
          skip("Add assertions for updated state")
        end

        it "assigns the requested level as @level" do
          put :update, {:id => level.to_param, :level => valid_attributes}, valid_session
          expect(assigns(:level)).to eq(level)
        end

        it "redirects to the level" do
          put :update, {:id => level.to_param, :level => valid_attributes}, valid_session
          expect(response).to redirect_to(level)
        end
      end

      describe "with invalid params" do
        it "assigns the level as @level" do
          put :update, {:id => level.to_param, :level => invalid_attributes}, valid_session
          expect(assigns(:level)).to eq(level)
        end

        it "re-renders the 'edit' template" do
          put :update, {:id => level.to_param, :level => invalid_attributes}, valid_session
          expect(response).to render_template("edit")
        end
      end
    end

    describe "GET destroy" do
      it "destroys the requested level" do
        level = Level.create! valid_attributes
        expect {
          delete :destroy, {:id => level.to_param}, valid_session
        }.to change(level, :count).by(-1)
      end

      it "redirects to the levels list" do
        level = Level.create! valid_attributes
        delete :destroy, {:id => level.to_param}, valid_session
        expect(response).to redirect_to(levels_url)
      end
    end
  end
end
