package com.intellihire.service;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

/**
 * Created by Klaus on 23.04.2016.
 */
@Path("/hello")
public class HelloWorldService {

    @GET
    @Path("/{name}")
    public Response helloName(@PathParam("name") String name) {

        String output = "Hello " + name + "!";

        return Response.status(200).entity(output).build();

    }

    @GET
    @Path("/")
    public Response helloWorld() {

        String output = "Hello World!";


        return Response.status(200).entity(output).build();

    }

}