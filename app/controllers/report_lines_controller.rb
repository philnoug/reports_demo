class ReportLinesController < ApplicationController
  # GET /report_lines
  # GET /report_lines.xml
  def index
    @report_lines = ReportLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @report_lines }
      format.json { render :json => @report_lines }
    end
  end
 
  def updated_at
      render :text => ReportLine.maximum('updated_at').strftime('%Y-%m-%d %H:%M:%S') 
  end
  # GET /report_lines/1
  # GET /report_lines/1.xml
  def show
    @report_line = ReportLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_line }
      format.json { render :json => @report_line }
    end
  end

  def create_new
  	report_id = params[:report_id]
  	pk= 	params[:pk]
  	lat=	params[:lat]
  	lon=	params[:lon]
  	voie= 	params[:voie]
  	file= 	params[:file]
  	conso= 	params[:conso]
  	
  	product_name = params[:product_name]
  	product_price= params[:product_price]
  	
    @report_line = ReportLine.new( :report_id => report_id, :pk => pk, :lat => lat, :lon => lon, :voie => voie, :file => file, :conso => conso, :product_name => product_name, :product_price => product_price )

    if @report_line.save
    	render :text => "OK"
    else
    	render :text => "Error"
    end
  end

  # GET /report_lines/new
  # GET /report_lines/new.xml
  def new
    @report_line = ReportLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report_line }
    end
  end

  # GET /report_lines/1/edit
  def edit
    @report_line = ReportLine.find(params[:id])
  end

  # POST /report_lines
  # POST /report_lines.xml
  def create
    @report_line = ReportLine.new(params[:report_line])

    respond_to do |format|
      if @report_line.save
        format.html { redirect_to(@report_line, :notice => 'Report line was successfully created.') }
        format.xml  { render :xml => @report_line, :status => :created, :location => @report_line }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_lines/1
  # PUT /report_lines/1.xml
  def update
    @report_line = ReportLine.find(params[:id])

    respond_to do |format|
      if @report_line.update_attributes(params[:report_line])
        format.html { redirect_to(@report_line, :notice => 'Report line was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_lines/1
  # DELETE /report_lines/1.xml
  def destroy
    @report_line = ReportLine.find(params[:id])
    @report_line.destroy

    respond_to do |format|
      format.html { redirect_to(report_lines_url) }
      format.xml  { head :ok }
    end
  end
end
