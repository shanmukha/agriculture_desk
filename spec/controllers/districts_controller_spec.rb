require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DistrictsController do

  # This should return the minimal set of attributes required to create a valid
  # District. As you add validations to District, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "state" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DistrictsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all districts as @districts" do
      district = District.create! valid_attributes
      get :index, {}, valid_session
      assigns(:districts).should eq([district])
    end
  end

  describe "GET show" do
    it "assigns the requested district as @district" do
      district = District.create! valid_attributes
      get :show, {:id => district.to_param}, valid_session
      assigns(:district).should eq(district)
    end
  end

  describe "GET new" do
    it "assigns a new district as @district" do
      get :new, {}, valid_session
      assigns(:district).should be_a_new(District)
    end
  end

  describe "GET edit" do
    it "assigns the requested district as @district" do
      district = District.create! valid_attributes
      get :edit, {:id => district.to_param}, valid_session
      assigns(:district).should eq(district)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new District" do
        expect {
          post :create, {:district => valid_attributes}, valid_session
        }.to change(District, :count).by(1)
      end

      it "assigns a newly created district as @district" do
        post :create, {:district => valid_attributes}, valid_session
        assigns(:district).should be_a(District)
        assigns(:district).should be_persisted
      end

      it "redirects to the created district" do
        post :create, {:district => valid_attributes}, valid_session
        response.should redirect_to(District.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved district as @district" do
        # Trigger the behavior that occurs when invalid params are submitted
        District.any_instance.stub(:save).and_return(false)
        post :create, {:district => { "state" => "invalid value" }}, valid_session
        assigns(:district).should be_a_new(District)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        District.any_instance.stub(:save).and_return(false)
        post :create, {:district => { "state" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested district" do
        district = District.create! valid_attributes
        # Assuming there are no other districts in the database, this
        # specifies that the District created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        District.any_instance.should_receive(:update_attributes).with({ "state" => "" })
        put :update, {:id => district.to_param, :district => { "state" => "" }}, valid_session
      end

      it "assigns the requested district as @district" do
        district = District.create! valid_attributes
        put :update, {:id => district.to_param, :district => valid_attributes}, valid_session
        assigns(:district).should eq(district)
      end

      it "redirects to the district" do
        district = District.create! valid_attributes
        put :update, {:id => district.to_param, :district => valid_attributes}, valid_session
        response.should redirect_to(district)
      end
    end

    describe "with invalid params" do
      it "assigns the district as @district" do
        district = District.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        District.any_instance.stub(:save).and_return(false)
        put :update, {:id => district.to_param, :district => { "state" => "invalid value" }}, valid_session
        assigns(:district).should eq(district)
      end

      it "re-renders the 'edit' template" do
        district = District.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        District.any_instance.stub(:save).and_return(false)
        put :update, {:id => district.to_param, :district => { "state" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested district" do
      district = District.create! valid_attributes
      expect {
        delete :destroy, {:id => district.to_param}, valid_session
      }.to change(District, :count).by(-1)
    end

    it "redirects to the districts list" do
      district = District.create! valid_attributes
      delete :destroy, {:id => district.to_param}, valid_session
      response.should redirect_to(districts_url)
    end
  end

end
