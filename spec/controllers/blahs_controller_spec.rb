require 'spec_helper'

describe BlahsController do

  def mock_blah(stubs={})
    @mock_blah ||= mock_model(Blah, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all blahs as @blahs" do
      Blah.stub(:all) { [mock_blah] }
      get :index
      assigns(:blahs).should eq([mock_blah])
    end
  end

  describe "GET show" do
    it "assigns the requested blah as @blah" do
      Blah.stub(:find).with("37") { mock_blah }
      get :show, :id => "37"
      assigns(:blah).should be(mock_blah)
    end
  end

  describe "GET new" do
    it "assigns a new blah as @blah" do
      Blah.stub(:new) { mock_blah }
      get :new
      assigns(:blah).should be(mock_blah)
    end
  end

  describe "GET edit" do
    it "assigns the requested blah as @blah" do
      Blah.stub(:find).with("37") { mock_blah }
      get :edit, :id => "37"
      assigns(:blah).should be(mock_blah)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created blah as @blah" do
        Blah.stub(:new).with({'these' => 'params'}) { mock_blah(:save => true) }
        post :create, :blah => {'these' => 'params'}
        assigns(:blah).should be(mock_blah)
      end

      it "redirects to the created blah" do
        Blah.stub(:new) { mock_blah(:save => true) }
        post :create, :blah => {}
        response.should redirect_to(blah_url(mock_blah))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved blah as @blah" do
        Blah.stub(:new).with({'these' => 'params'}) { mock_blah(:save => false) }
        post :create, :blah => {'these' => 'params'}
        assigns(:blah).should be(mock_blah)
      end

      it "re-renders the 'new' template" do
        Blah.stub(:new) { mock_blah(:save => false) }
        post :create, :blah => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested blah" do
        Blah.should_receive(:find).with("37") { mock_blah }
        mock_blah.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :blah => {'these' => 'params'}
      end

      it "assigns the requested blah as @blah" do
        Blah.stub(:find) { mock_blah(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:blah).should be(mock_blah)
      end

      it "redirects to the blah" do
        Blah.stub(:find) { mock_blah(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(blah_url(mock_blah))
      end
    end

    describe "with invalid params" do
      it "assigns the blah as @blah" do
        Blah.stub(:find) { mock_blah(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:blah).should be(mock_blah)
      end

      it "re-renders the 'edit' template" do
        Blah.stub(:find) { mock_blah(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested blah" do
      Blah.should_receive(:find).with("37") { mock_blah }
      mock_blah.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the blahs list" do
      Blah.stub(:find) { mock_blah }
      delete :destroy, :id => "1"
      response.should redirect_to(blahs_url)
    end
  end

end
