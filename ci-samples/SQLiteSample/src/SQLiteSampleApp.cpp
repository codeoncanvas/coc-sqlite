#include "cinder/app/App.h"
#include "cinder/app/RendererGl.h"
#include "cinder/gl/gl.h"

#include "cocSQLite.h"

using namespace ci;
using namespace ci::app;
using namespace std;

class SQLiteSampleApp : public App {
  public:
	void setup() override;
	void mouseDown( MouseEvent event ) override;
	void update() override;
	void draw() override;
};

void SQLiteSampleApp::setup()
{
}

void SQLiteSampleApp::mouseDown( MouseEvent event )
{
}

void SQLiteSampleApp::update()
{
}

void SQLiteSampleApp::draw()
{
	gl::clear( Color( 0, 0, 0 ) ); 
}

CINDER_APP( SQLiteSampleApp, RendererGl )
